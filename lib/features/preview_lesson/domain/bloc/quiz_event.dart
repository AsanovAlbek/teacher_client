part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const QuizEvent._();

  const factory QuizEvent.loading(
      {required Lesson lesson,
      required List<Task> tasks,
      required Function ifLessonEmpty,
      required bool isTrial}) = LoadingEvent;
  const factory QuizEvent.endTrial() = EndTrial;
  const factory QuizEvent.getAnswer({Function(Question? question)? onAnswer}) = GetAnswer;
  const factory QuizEvent.nextQuestion({required VoidCallback onFinish}) =
      NextQuestion;
}
