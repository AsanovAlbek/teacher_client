part of 'lesson_bloc.dart';

@freezed
class LessonEvent with _$LessonEvent {
  const LessonEvent._();

  const factory LessonEvent.load({required int courseId}) = LessonLoadEvent;

  const factory LessonEvent.lessonsStream({required Course course}) = LessonsStreamEvent;

  const factory LessonEvent.addLesson(
      {required int courseId,
      required Lesson lesson,
      FilePickerResult? filePickerResult,
      Function(Lesson)? onSuccess,
      Function(Exception?)? onError}) = LessonAddEvent;

  const factory LessonEvent.updateLesson(
      {required int courseId,
      required Lesson lesson,
      FilePickerResult? filePickerResult,
      Function(Lesson)? onSuccess,
      Function(Exception?)? onError}) = LessonUpdateEvent;

  const factory LessonEvent.updateImage({required FilePickerResult? filePickerResult}) =
      LessonUpdateImageEvent;

  const factory LessonEvent.changeFieldsEditable() = ChangeFieldsEditableLessonEvent;

  const factory LessonEvent.deleteLesson(
      {required Lesson lesson, Function(Lesson)? onSuccess, Function(Lesson)? onError}) = LessonDeleteEvent;
}
