import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/publication_status.dart';
import '../../../../core/model/lesson.dart';
import '../../../../core/resources/colors.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;
  final Function(Lesson)? onRedact;

  const LessonItem({super.key, required this.lesson, this.onRedact});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final PublicationStatus status = PublicationStatus.values.firstWhere(
        (s) => s.label == lesson.status.toUpperCase(),
        orElse: () => PublicationStatus.error);
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
                child: lesson.imageUrl.isNotEmpty
                    ? CachedNetworkImage(
                        fadeInCurve: Curves.ease,
                        width: 80,
                        height: 80,
                        imageUrl: lesson.imageUrl,
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
                    Text(lesson.name, style: textTheme.bodyLarge),
                    Text(
                      lesson.description,
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
                      child: Text(status.label,
                          style: textTheme.bodyMedium
                              ?.copyWith(color: status.color)),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          onRedact?.call(lesson);
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
