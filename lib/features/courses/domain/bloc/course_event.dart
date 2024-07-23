part of 'course_bloc.dart';

@freezed
class CoursesEvent with _$CoursesEvent {
  const CoursesEvent._();

  const factory CoursesEvent.load() = CoursesLoadEvent;

  const factory CoursesEvent.searchStream({required String query}) = CoursesStreamSearchEvent;

  const factory CoursesEvent.search({required String query}) = CoursesSearchEvent;

  const factory CoursesEvent.addCourse(
      {required Course course,
      List<Lesson>? lessons,
      FilePickerResult? pickerResult,
      Function(Course)? onSuccess,
      Function(Exception?)? onError}) = CoursesAddCourseEvent;

  const factory CoursesEvent.updateCourse({
    required Course course,
    List<Lesson>? lessons,
    FilePickerResult? pickerResult,
    Function(Course)? onSuccess,
    Function(Exception?)? onError}) = CourseUpdateEvent;

  const factory CoursesEvent.deleteCourse({
    required Course course,
    Function(Course)? onSuccess,
    Function(Exception?)? onError
  }) = CoursesDeleteEvent;
}
