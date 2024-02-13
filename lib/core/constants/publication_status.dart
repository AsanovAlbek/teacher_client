import 'package:flutter/material.dart';
import 'package:teacher_client/core/resources/colors.dart';

enum PublicationStatus {
  published('ОПУБЛИКОВАНО'), error('ОШИБКА ПУБЛИКАЦИИ'), draft('ЧЕРНОВИК');
  final String label;
  const PublicationStatus(this.label);
  Color get color => switch(this) {
    PublicationStatus.published => Colors.green,
    PublicationStatus.error => AppColors.red,
    PublicationStatus.draft => AppColors.gray,
  };
}