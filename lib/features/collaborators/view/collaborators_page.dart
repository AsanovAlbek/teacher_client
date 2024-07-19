import 'collaborators.dart';

@RoutePage()
class CollaboratorsPage extends StatefulWidget {
  const CollaboratorsPage({super.key});

  @override
  State<CollaboratorsPage> createState() => _CollaboratorsPageState();
}

class _CollaboratorsPageState extends State<CollaboratorsPage> {
  final _addCollaboratorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final course = context.read<HomeBloc>().state.course;
    final lesson = context.read<HomeBloc>().state.lesson;
    Talker()
        .debug('Course from home bloc $course\nLesson from home bloc $lesson');
    final courseId = course?.id ?? -1;
    return Center(
      child: BlocProvider(
        create: (context) =>
            CollaboratorsBloc(GetIt.I<CollaboratorsRepository>())
              ..add(CollaboratorsEvent.fetchCollaboratorsAsStream(
                  courseId: courseId)),
        child: BlocBuilder<CollaboratorsBloc, CollaboratorsState>(
          builder: (context, state) {
            final collaboratorsBloc = context.read<CollaboratorsBloc>();
            return Column(
              children: [
                const Text('Настройки доступа'),
                AddCollaboratorsForm(
                    addCollaboratorController: _addCollaboratorController,
                    collaboratorsBloc: collaboratorsBloc,
                    courseId: courseId),
                state.when(loading: () {
                  return const CircularProgressIndicator();
                }, empty: () {
                  return const Text('Пока нет участников');
                }, loaded: (List<Teacher> collaborators) {
                  return CollaboratorsList(
                      collaborators: collaborators,
                      courseId: courseId,
                      addCollaboratorController: _addCollaboratorController);
                }, error: (String? message) {
                  return Text('Ошибка $message');
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AddCollaboratorsForm extends StatelessWidget {
  const AddCollaboratorsForm({
    super.key,
    required TextEditingController addCollaboratorController,
    required this.collaboratorsBloc,
    required this.courseId,
  }) : _addCollaboratorController = addCollaboratorController;

  final TextEditingController _addCollaboratorController;
  final CollaboratorsBloc collaboratorsBloc;
  final int courseId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: _addCollaboratorController,
          decoration:
              const InputDecoration(hintText: 'Введите почту пользователя'),
        )),
        ElevatedButton(
            onPressed: () {
              collaboratorsBloc.add(CollaboratorsEvent.addCollaboratorByEmail(
                  courseId: courseId,
                  email: _addCollaboratorController.text.trim(),
                  onSuccess: (teacher) {
                    _addCollaboratorController.clear();
                  },
                  onError: (error) {
                    context.showSnackBar(message: error ?? 'ошибка');
                  }));
            },
            child: const Text('Добавить')),
      ],
    );
  }
}

class CollaboratorsList extends StatelessWidget {
  const CollaboratorsList({
    super.key,
    required this.collaborators,
    required this.courseId,
    required TextEditingController addCollaboratorController,
  }) : _addCollaboratorController = addCollaboratorController;

  final List<Teacher> collaborators;
  final int courseId;
  final TextEditingController _addCollaboratorController;

  @override
  Widget build(BuildContext context) {
    final collaboratorsBloc = context.read<CollaboratorsBloc>();
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListView(children: [
          for (final collaborator in collaborators)
            CollaboratorItem(
              teacher: collaborator,
              onDeleteCollaborator: (teacher) {
                collaboratorsBloc.add(CollaboratorsEvent.removeCollaboratorById(
                    courseId: courseId,
                    collaboratorId: teacher.id,
                    onSuccess: (_) {
                      _addCollaboratorController.clear();
                    },
                    onError: (message) {
                      context.showSnackBar(message: message ?? 'ошибка');
                    }));
              },
            )
        ]),
      ),
    );
  }
}
