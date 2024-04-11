part of 'lesson_bloc.dart';

@freezed
class LessonEvent with _$LessonEvent {
  const LessonEvent._();

  const factory LessonEvent.load({required int courseId}) = LessonLoadEvent;

  const factory LessonEvent.addLesson(
      {required int courseId, required LessonModel lesson,
        Function(Lesson)? onSuccess,
        Function(Object?)? onError}) = LessonAddEvent;

  const factory LessonEvent.deleteLesson({required LessonModel lesson}) = LessonDeleteEvent;
}
