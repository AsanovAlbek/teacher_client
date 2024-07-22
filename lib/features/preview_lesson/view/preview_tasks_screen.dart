import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teacher_client/core/extensions/context_extensions.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/core/navigation/router.dart';
import 'package:teacher_client/features/preview_lesson/domain/bloc/quiz_bloc.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';
import 'package:teacher_client/features/tasks/presentation/tasks_screen.dart';

@RoutePage()
class PreviewTasksScreen extends StatefulWidget {
  const PreviewTasksScreen({super.key});

  @override
  State<PreviewTasksScreen> createState() => _PreviewTasksScreenState();
}

class _PreviewTasksScreenState extends State<PreviewTasksScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuizBloc, QuizState>(builder: (context, state) {
        final bloc = context.read<QuizBloc>();
        return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Text(message),
            loaded: (int selectedIndex,
                List<Task> tasks,
                List<Widget> questionWidgets,
                Question? currentQuestion,
                bool isTrial,
                bool endTrialFlag,
                bool isDialogShow,
                String userAnswer,
                String rightAnswer,
                int mistakesCounter,
                int totalMistakes,
                bool canSkipTask) {
              return Column(
                children: [
                  Text(
                    currentQuestion?.question() ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20),
                  ),
                  Expanded(
                      child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _controller,
                    children: questionWidgets,
                  )),
                  ElevatedButton(
                      onPressed: () {
                        if (!bloc.question().isSelected()) {
                          context.showSnackBar(
                              message: 'Выберите или введите ответ');
                        } else {
                          debugPrint('index $selectedIndex question is null ${currentQuestion == null} answer = ${currentQuestion?.getAnswer()}');
                          bloc.add(QuizEvent.getAnswer(onAnswer: (question) {
                            _showAnswerDialog(context, selectedIndex, question);
                          FocusManager.instance.primaryFocus?.unfocus();
                          }));
                        }
                      },
                      child: const Text('Ответить'))
                ],
              );
            });
      }),
    );
  }

  void _showAnswerDialog(
      BuildContext context, int selectedIndex, Question? question) {
    showDialog(
        context: context,
        builder: (dialogContext) {
          return AlertDialog.adaptive(
            title: Text(question != null && question.isRight() ? 'Правильно' : 'Неправильно',
                style: const TextStyle(fontSize: 18)),
            content: Text(
                question != null && !question.isRight()
                    ? 'Правильный ответ: ${question.rightAnswer()}\nВаш ответ ${question.getAnswer()}'
                    : '',
                style: const TextStyle(fontSize: 18)),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    _controller.animateToPage(selectedIndex + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                    context
                        .read<QuizBloc>()
                        .add(QuizEvent.nextQuestion(onFinish: () {
                          _controller.animateTo(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                      context.showSnackBar(message: 'Вы прошли урок');
                      context.router.back();
                    }));
                    Navigator.of(dialogContext).pop();
                  },
                  child: const Text('Дальше'))
            ],
          );
        });
  }
}
