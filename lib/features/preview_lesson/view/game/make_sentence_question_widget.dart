import 'package:flutter/material.dart';
import 'package:teacher_client/core/model/answer/answer.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';


class MakeSentenceQuestionPreview extends StatefulWidget implements Question {
  Task? task;
  Answer? answer;

  final List<String> _userAnswer = List.empty(growable: true);
  late List<String> _answersBar;

  MakeSentenceQuestionPreview({required this.task, super.key});

  @override
  State<StatefulWidget> createState() => _MakeSentenceState();

  @override
  void clear() {
    _userAnswer.clear();
    _answersBar.clear();
  }

  @override
  String? getAnswer() => _userAnswer.join(", ");

  @override
  bool isRight() => getAnswer() == rightAnswer();

  @override
  bool isSelected() => _userAnswer.isNotEmpty;

  @override
  String rightAnswer() => task?.task.split("*").last.split("#").join(", ") ?? "";

  @override
  String? question() => "Переведите предложение";
}

class _MakeSentenceState extends State<MakeSentenceQuestionPreview> {

  @override
  void initState() {
    widget._answersBar = widget.task!.taskAnswers.map((e) => e.answer).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.task!.task.split("*").first.split("#").join(" ")),
          const SizedBox(height: 30),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 200
              ),
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: const BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(16),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: widget._userAnswer.map(
                      (item) => GestureDetector(
                        onTap: () => setState(() {
                        widget._answersBar.add(item);
                        widget._userAnswer.remove(item);
                        debugPrint("gesture!");
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
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            direction: Axis.horizontal,
            children: widget._answersBar.map(
                    (item) => GestureDetector(
                      onTap: () => setState(() {
                        widget._userAnswer.add(item);
                        widget._answersBar.remove(item);
                        debugPrint("gesture!");
                      }),
                      child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue),
                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Text(item),
                ),
                    )).toList(),
          )
        ],
      ),
    );
  }
}
