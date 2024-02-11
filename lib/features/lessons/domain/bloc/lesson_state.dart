part of 'lesson_bloc.dart';
@freezed
class LessonState with _$LessonState {
  const LessonState._();
  const factory LessonState.loading() = LessonsLoadingState;
  const factory LessonState.error(String? message) = LessonsErrorState;
  const factory LessonState.loaded({
    @Default(<Lesson>[]) List<Lesson> lessons
}) = LessonLoadedState;
}