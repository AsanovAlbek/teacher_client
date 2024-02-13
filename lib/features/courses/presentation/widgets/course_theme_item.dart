import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:teacher_client/core/constants/publication_status.dart';
import 'package:teacher_client/core/resources/colors.dart';

import '../../../../core/model/course.dart';

class CourseThemeItem extends StatelessWidget {
  final Course course;
  final Function(Course)? onRedact;

  const CourseThemeItem({super.key, required this.course, this.onRedact});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final PublicationStatus status = PublicationStatus.values
        .firstWhere((s) => s.label == course.status.toUpperCase(), orElse: () => PublicationStatus.error);
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: course.iconUrl.isNotEmpty
                    ? CachedNetworkImage(
                        fadeInCurve: Curves.ease,
                        width: 80,
                        height: 80,
                        imageUrl: course.iconUrl,
                        placeholder: (context, url) => const Icon(Icons.add),
                        fit: BoxFit.cover,
                      )
                    : Container(
                        color: AppColors.emptyImageBackgroundColor,
                        width: 80,
                        height: 80,
                        child: const Center(
                            child: Icon(Icons.add, color: AppColors.gray)),
                      )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(course.name, style: textTheme.bodyLarge),
                    Text(
                      course.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(status.label, style: textTheme.bodyMedium?.copyWith(color: status.color)),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          onRedact?.call(course);
                        },
                        child: const Text('РЕДАКТИРОВАТЬ'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
