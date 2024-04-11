import 'package:teacher_client/features/lessons/domain/model/lesson.dart';

import '../../../../core/constants/publication_status.dart';
import '../../../../core/model/lesson.dart';

extension LessonExt on Lesson {
  LessonModel toDomain() {
    return LessonModel(
        id: id,
        courseId: courseId,
        name: name,
        description: description,
        imageUrl: imageUrl,
        status: PublicationStatus.values.firstWhere(
            (element) => element.label == status,
            orElse: () => PublicationStatus.draft));
  }
}

extension LessonModelExt on LessonModel {
  Lesson toData() {
    return Lesson(
        id: id,
        courseId: courseId,
        name: name,
        description: description,
        imageUrl: imageUrl,
        status: status.label);
  }
}
