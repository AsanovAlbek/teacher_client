import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker/talker.dart';
import 'package:teacher_client/core/extensions/context_extensions.dart';
import 'package:teacher_client/core/model/teacher/teacher.dart';
import 'package:teacher_client/features/collaborators/domain/bloc/collaborators_bloc.dart';
import 'package:teacher_client/features/collaborators/domain/repository/collaborators_repository.dart';
import 'package:teacher_client/features/collaborators/view/widgets/collaborator_item.dart';
import 'package:teacher_client/features/home/domain/home_bloc.dart';

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
    Talker().debug('Course from home bloc $course\nLesson from home bloc $lesson');
    final courseId = course?.id ?? 666;
    return Center(
      child: BlocProvider(
        create: (context) =>
            CollaboratorsBloc(GetIt.I<CollaboratorsRepository>())
              ..add(CollaboratorsEvent.fetchCollaborators(courseId: courseId)),
        child: BlocBuilder<CollaboratorsBloc, CollaboratorsState>(
          builder: (context, state) {
            final collaboratorsBloc = context.read<CollaboratorsBloc>();
            return Column(
              children: [
                const Text('Настройки доступа'),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: _addCollaboratorController,
                      decoration: const InputDecoration(
                          hintText: 'Введите почту пользователя'),
                    )),
                    ElevatedButton(
                        onPressed: () {
                          collaboratorsBloc
                              .add(CollaboratorsEvent.addCollaboratorByEmail(
                                  courseId: courseId,
                                  email: _addCollaboratorController.text.trim(),
                                  onSuccess: (teacher) {
                                    _addCollaboratorController.clear();
                                    collaboratorsBloc.add(
                                        CollaboratorsEvent.fetchCollaborators(
                                            courseId: courseId));
                                  },
                                  onError: (error) {
                                    context.showSnackBar(
                                        message: error ?? 'ошибка');
                                  }));
                        },
                        child: const Text('Добавить')),
                  ],
                ),
                state.when(loading: () {
                  return const CircularProgressIndicator();
                }, empty: () {
                  return const Text('Пока нет участников');
                }, loaded: (List<Teacher> collaborators) {
                  return Expanded(
                    child: Card(
                      margin: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: ListView(children: [
                        for (final collaborator in collaborators)
                          CollaboratorItem(
                            teacher: collaborator,
                            onDeleteCollaborator: (teacher) {
                              collaboratorsBloc.add(
                                  CollaboratorsEvent.removeCollaboratorById(
                                      courseId: courseId,
                                      collaboratorId: teacher.id,
                                      onSuccess: (_) {
                                        _addCollaboratorController.clear();
                                        collaboratorsBloc.add(CollaboratorsEvent
                                            .fetchCollaborators(
                                                courseId: courseId));
                                      },
                                      onError: (message) {
                                        context.showSnackBar(
                                            message: message ?? 'ошибка');
                                      }));
                            },
                          )
                      ]),
                    ),
                  );
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
