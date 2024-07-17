part of 'lesson_bloc.dart';
@freezed
class LessonState with _$LessonState {
  const LessonState._();
  const factory LessonState.loading() = LessonsLoadingState;
  const factory LessonState.error(String? message) = LessonsErrorState;
  const factory LessonState.loaded({
    @Default(Course()) Course course,
    @Default(<Lesson>[]) List<Lesson> lessons,
    FilePickerResult? filePickerResult,
    @Default(true) bool isTitleEditable
}) = LessonLoadedState;
}