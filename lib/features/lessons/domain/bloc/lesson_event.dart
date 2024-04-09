part of 'lesson_bloc.dart';

@freezed
class LessonEvent with _$LessonEvent {
  const LessonEvent._();

  const factory LessonEvent.load({required int courseId}) = LessonLoadEvent;

  const factory LessonEvent.addLesson(
      {required int courseId, required Lesson lesson}) = LessonAddEvent;

  const factory LessonEvent.deleteLesson({required Lesson lesson}) = LessonDeleteEvent;
}
