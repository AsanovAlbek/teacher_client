part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const QuizState._();

  const factory QuizState.loading() = QuizStateLoading;

  const factory QuizState.loaded({
      @Default(0) int selectedIndex,
      @Default([])List<Task> tasks,
      @Default(<Widget>[]) List<Widget> questionWidgets,
      Question? currentQuestion,
      @Default(true) bool isTrial,
      @Default(false) bool endTrialFlag,
      @Default(false) bool isDialogShow,
      @Default("")String userAnswer,
      @Default("") String rightAnswer,
      @Default(0) int mistakesCounter,
      @Default(0) int totalMistakes,
      @Default(false) bool canSkipTask,
      @Default(100) int health,
      @Default(0) int coins
      }) = QuizStateLoaded;

  const factory QuizState.error({@Default("")String message}) = QuizStateError;
}