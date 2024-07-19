import 'package:flutter/material.dart';
import 'package:teacher_client/core/model/answer/answer.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';

class TypeQuestionPreview extends StatefulWidget implements Question {

  Answer? answer;
  Task? task;
  String answerText = "";

  TypeQuestionPreview({Key? key, required this.task}): super(key: key);

  @override
  void clear() {
    answer = null;
    answerText = "";
  }

  @override
  State<StatefulWidget> createState() => TypeState();

  @override
  String? getAnswer() => answer?.answer;

  @override
  String rightAnswer() => task!.taskAnswers.first.rightAnswer;

  @override
  bool isSelected() {
    return answerText.isNotEmpty;
  }

  @override
  bool isRight() {
    return isSelected() && answerText.toLowerCase() == rightAnswer().toLowerCase();
  }

  @override
  String? question() => task?.task;

}

class TypeState extends State<TypeQuestionPreview> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 26),
            inputField()
          ],
        ),
      ),
    );
  }

  Widget inputField() {
    return SizedBox(
      height: 100,
      width: 300,
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
            ),
          filled: true
        ),
        onChanged: (text) {
          setState(() {
            widget.answerText = text.trim();
            widget.answer = widget.task?.taskAnswers.first.copyWith(answer: text);
          });
        },
      ),
    );
  }
}