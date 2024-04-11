import 'package:equatable/equatable.dart';
import 'package:teacher_client/core/constants/publication_status.dart';

class LessonModel with EquatableMixin {
  int? id;
  String name;
  String description;
  int courseId;
  String imageUrl;
  PublicationStatus status;

  LessonModel(
      {this.id,
      this.name = '',
      this.description = '',
      this.courseId = 0,
      this.imageUrl = '',
      this.status = PublicationStatus.draft});

  LessonModel copyWith({int? id,
    String? name,
    String? description,
    int? courseId,
    String? imageUrl,
    PublicationStatus? status}) {
    return LessonModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      courseId: courseId ?? this.courseId,
      imageUrl: imageUrl ?? this.imageUrl,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [id, name, description, courseId, imageUrl, status];
  @override
  bool? get stringify => true;
}
