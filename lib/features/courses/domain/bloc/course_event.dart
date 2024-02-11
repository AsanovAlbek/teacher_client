part of 'course_bloc.dart';

@freezed
class CoursesEvent with _$CoursesEvent {
  const CoursesEvent._();

  const factory CoursesEvent.load() = CoursesLoadEvent;

  const factory CoursesEvent.search({required String query}) =
      CoursesSearchEvent;

  const factory CoursesEvent.addCourse(
      {required Course course,
      List<Lesson>? lessons,
      FilePickerResult? pickerResult}) = CoursesAddCourseEvent;
}
