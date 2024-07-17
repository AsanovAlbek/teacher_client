import 'package:flutter/material.dart';
import 'package:teacher_client/core/model/answer/answer.dart';
import 'package:teacher_client/core/model/task/task.dart';
import 'package:teacher_client/features/preview_lesson/view/game/question.dart';

class TypeMissingWordQuestionPreview extends StatefulWidget implements Question {
  Task? task;
  Answer? answer;
  List<TextEditingController> textControllers = List.empty(growable: true);

  TypeMissingWordQuestionPreview(
      {required this.task, required this.answer, super.key});

  @override
  void clear() {
    textControllers.clear();
  }

  @override
  State<StatefulWidget> createState() => _TypeMissingWordState();

  @override
  String? getAnswer() =>
      textControllers.map((controller) => controller.text).join(", ");

  @override
  bool isRight() =>
      getAnswer()!.trim() == rightAnswer() && rightAnswer().trim().isNotEmpty;

  @override
  bool isSelected() => getAnswer()!.trim().isNotEmpty;

  @override
  String? question() => "Дополните фразу";

  @override
  String rightAnswer() => answer?.answer ?? "";
}

class _TypeMissingWordState extends State<TypeMissingWordQuestionPreview> {
  late List<String> wordsContent;

  @override
  void initState() {
    wordsContent = widget.task!.task.split("****").toList();
    debugPrint(wordsContent.length.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(widget.answer!.rightAnswer),
              const SizedBox(height: 30),
              Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(wordsContent.length, (index) {
                    final controller = TextEditingController();
                    setState(() {
                      if (index < wordsContent.length - 1) {
                        widget.textControllers.add(controller);
                      }
                    });
                    return Wrap(
                      spacing: 8,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                                minWidth: 50, maxWidth: 150),
                            child: IntrinsicWidth(
                              child: TextField(
                                  readOnly: true,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.all(4)),
                                  controller: TextEditingController(
                                      text: wordsContent[index])),
                            ),
                          ),
                        ),
                        if (index < wordsContent.length - 1)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                    minWidth: 50, maxWidth: 150),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    controller: controller,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(4),
                                        isCollapsed: true),
                                  ),
                                )),
                          )
                      ],
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
