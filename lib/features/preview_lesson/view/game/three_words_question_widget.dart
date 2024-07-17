import 'package:flutter/material.dart';
import 'package:teacher_client/core/model/answer/answer.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';

class ThreeWordsQuestionPreview extends StatefulWidget implements Question {
  Answer? selected;
  List<Answer> answers;
  int selectedIndex = -1;
  String questionTitle;

  ThreeWordsQuestionPreview(
      {Key? key, required this.answers, required this.questionTitle})
      : super(key: key);

  @override
  void clear() {
    selected = null;
    selectedIndex = -1;
  }

  @override
  String? getAnswer() => selected?.answer;

  @override
  String rightAnswer() => answers
      .firstWhere((element) => element.rightAnswer.toLowerCase() == "true")
      .answer;

  @override
  State<StatefulWidget> createState() => ThreeWordsState();

  @override
  bool isSelected() => selected != null && selectedIndex != -1;

  @override
  bool isRight() {
    return isSelected() &&
        selected ==
            answers.firstWhere(
                (element) => element.rightAnswer.toLowerCase() == "true");
  }

  @override
  String? question() => questionTitle;
}

class ThreeWordsState extends State<ThreeWordsQuestionPreview> {
  void select(int index) {
    setState(() {
      widget.selectedIndex = index;
      widget.selected = widget.answers[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.answers.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                    onTap: () {
                      select(index);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: ListTile(
                        title: Text(
                          widget.answers[index].answer,
                          textAlign: TextAlign.center,
                        ),
                        selected: widget.selectedIndex == index,
                        selectedTileColor: Colors.indigo,
                        selectedColor: Colors.white,
                        onTap: () {
                          select(index);
                        },
                      ),
                    )),
              ),
            );
          }).build(context),
    );
  }
}
