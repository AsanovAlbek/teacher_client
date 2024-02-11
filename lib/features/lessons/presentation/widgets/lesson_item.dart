import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/lesson.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;
  final Function(Lesson)? onRedact;

  const LessonItem({super.key, required this.lesson, required this.onRedact});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: lesson.imageUrl.isNotEmpty ? CachedNetworkImage(
                width: 50,
                height: 50,
                imageUrl: lesson.imageUrl,
                placeholder: (context, url) => const Icon(Icons.add),
                fit: BoxFit.cover
            ) : const SizedBox(width: 50, height: 50)),
        Expanded(
          child: Column(
            children: [
              Text(lesson.name),
              Text(lesson.description, overflow: TextOverflow.ellipsis, maxLines: 3)
            ],
          ),
        ),
        Column(
          children: [
            Text(lesson.status),
            ElevatedButton(onPressed: () {
              onRedact?.call(lesson);
            }, child: const Text('Редактировать'))
          ],
        )
      ],
    );
  }
}