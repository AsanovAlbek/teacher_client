abstract interface class Question {
  String? question();
  String? getAnswer();
  String rightAnswer();
  void clear();
  bool isRight();
  bool isSelected();
}