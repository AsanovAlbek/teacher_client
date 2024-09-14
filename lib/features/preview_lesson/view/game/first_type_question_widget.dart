import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:teacher_client/core/model/answer/answer.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';

class FirstTypeQuestionPreview extends StatefulWidget implements Question {
  final List<Answer> answers;
  final String questionTitle;
  int selectedIndex = -1;
  Answer? selected;

  FirstTypeQuestionPreview(
      {Key? key, required this.questionTitle, required this.answers})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FirstTypeQuestionPreviewState();

  @override
  void clear() {
    selectedIndex = -1;
    selected = null;
  }

  @override
  String? getAnswer() => selected?.answer;

  @override
  String rightAnswer() => answers
      .firstWhere((element) => element.rightAnswer.toLowerCase() == "true")
      .answer;

  @override
  bool isRight() {
    return isSelected() &&
        selected ==
            answers.firstWhere(
                (element) => element.rightAnswer.toLowerCase() == "true");
  }

  @override
  bool isSelected() {
    return selectedIndex != -1 && selected != null;
  }

  @override
  String? question() => questionTitle;
}

class _FirstTypeQuestionPreviewState extends State<FirstTypeQuestionPreview> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2.2,
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: widget.answers.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio:
                      constraints.maxWidth / (constraints.maxWidth / 2 - 20)),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: widget.selectedIndex == index
                          ? Colors.blueAccent
                          : Colors.white,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            select(index);
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: CachedNetworkImage(
                                imageUrl: widget.answers[index].imageUrl,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                              ),
                            ),
                            Text(widget.answers[index].answer,
                                style: const TextStyle(
                                    fontFamily: 'PT-Sans', fontSize: 16))
                          ],
                        ),
                      )),
                );
              }),
        );
      }),
    ));
  }

  void select(int index) {
    setState(() {
      widget.selectedIndex = index;
      widget.selected = widget.answers[index];
    });
    if (widget.answers[index].soundUrl.isNotEmpty) {
      player.play(UrlSource(widget.answers[index].soundUrl));
      if (player.state == PlayerState.playing) {
        player.pause();
      }
    }
  }

  @override
  void dispose() {
    player.release();
    super.dispose();
  }
}
