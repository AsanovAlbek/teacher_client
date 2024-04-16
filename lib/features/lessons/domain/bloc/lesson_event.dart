part of 'lesson_bloc.dart';

@freezed
class LessonEvent with _$LessonEvent {
  const LessonEvent._();

  const factory LessonEvent.load({required int courseId}) = LessonLoadEvent;

  const factory LessonEvent.addLesson(
      {required int courseId,
      required Lesson lesson,
      Function(Lesson)? onSuccess,
      Function(Exception?)? onError}) = LessonAddEvent;

  const factory LessonEvent.updateLesson({required int courseId,
    required Lesson lesson,
    Function(Lesson)? onSuccess,
    Function(Exception?)? onError}) = LessonUpdateEvent;

  const factory LessonEvent.deleteLesson({required Lesson lesson}) = LessonDeleteEvent;
}
