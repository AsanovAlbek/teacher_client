part of 'course_bloc.dart';
@freezed
class CourseState with _$CourseState {
  const CourseState._();

  const factory CourseState.loading() = CourseStateLoading;

  const factory CourseState.loaded(
      {@Default(<Course>[]) List<Course> courses}) = CourseStateLoaded;

  const factory CourseState.empty() = CourseStateEmpty;
  const factory CourseState.error({String? message}) = CourseStateError;
}