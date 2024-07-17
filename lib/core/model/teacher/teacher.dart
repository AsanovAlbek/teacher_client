import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher.freezed.dart';
part 'teacher.g.dart';

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'email') @Default('') String email
  }) = _Teacher;
  factory Teacher.fromJson(Map<String, dynamic> json) => _$TeacherFromJson(json);
}