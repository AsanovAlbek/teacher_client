import 'package:flutter/material.dart';
import 'package:teacher_client/core/model/answer/answer.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';


class FillWordsQuestionPreview extends StatefulWidget implements Question {

  final List<String> _answersBar = List.empty(growable: true);
  String _userAnswer = "";
  final List<Answer> answers;
  final Task task;

  FillWordsQuestionPreview({required this.task, required this.answers, super.key}) {
    _answersBar.clear();
    _answersBar.addAll(answers.map((e) => e.answer));
  }

  @override
  void clear() {
    _userAnswer = "";
  }

  @override
  State<StatefulWidget> createState() => _FillWordState();

  @override
  String? getAnswer() => _userAnswer;

  @override
  bool isRight() => _userAnswer == rightAnswer();

  @override
  bool isSelected() => _userAnswer.trim().isNotEmpty;

  @override
  String? question() => "Дополните предложение";

  @override
  String rightAnswer() => answers.first.rightAnswer;
  // @override
  // String rightAnswer() => answers.firstWhere((element) => element.rightAnswer.toLowerCase() == "true").answer;
}

class _FillWordState extends State<FillWordsQuestionPreview> {

  late List<String> words;

  @override
  void initState() {
    words = widget.task.task.split("****").toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Wrap(
              spacing: 8,
              direction: Axis.horizontal,
              children: List.generate(words.length, (index) => Wrap(
                spacing: 8,
                direction: Axis.horizontal,
                children: [
                  Text(words[index]),
                  if (index < words.length - 1) GestureDetector(
                      onTap: () => setState(() {
                        if (widget._userAnswer.isNotEmpty) {
                          widget._answersBar.add(widget._userAnswer);
                          widget._userAnswer = "";
                        }
                      }),
                      child: ConstrainedBox(
                          constraints: const BoxConstraints(minWidth: 50),
                          child: Text(widget._userAnswer))
                  )
                ],
              )),
            ),
            const SizedBox(height: 30),
            Wrap(
              direction: Axis.horizontal,
              children: widget._answersBar.map(
                      (item) => GestureDetector(
                    onTap: () => setState(() {
                      if (widget._answersBar.isNotEmpty) {
                        widget._answersBar.add(widget._userAnswer);
                      }
                        
                        widget._answersBar.remove(item);
                        widget._userAnswer = item;
                    }),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius: const BorderRadius.all(Radius.circular(8))),
                      child: Text(item),
                    ),
                  )).toList(),
            )
          ],
        ),
      ),
    );
  }
}