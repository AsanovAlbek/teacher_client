enum TaskType {
  fourPictures(1, 4, 'Задание с картинками'),
  threeAnswersSingleSelection(2,3, 'Задание с выбором ответа'),
  typeTranslate(3, 1, 'Задание с вводом ответа'),
  makeSentenceByWords(4, 0, 'Задание с построением предложения'),
  fillPassByWords(7, 1, 'Задание с заполнением пропусков словами'),
  fillPassByType(8, 1, 'Задание с построением пропусков с помощью ввода'),
  none(0, 0, 'None');

  final int rowTaskType;
  final int defaultAnswersCount;
  final String label;
  const TaskType(this.rowTaskType, this.defaultAnswersCount, this.label);
}