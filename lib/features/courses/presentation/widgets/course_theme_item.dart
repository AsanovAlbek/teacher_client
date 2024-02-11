import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/course.dart';

class CourseThemeItem extends StatelessWidget {
  final Course course;
  final Function(Course)? onRedact;

  const CourseThemeItem({super.key, required this.course, this.onRedact});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: course.iconUrl.isNotEmpty ? CachedNetworkImage(
              width: 50,
              height: 50,
              imageUrl: course.iconUrl,
              placeholder: (context, url) => const Icon(Icons.add),
              fit: BoxFit.cover
            ) : const SizedBox(width: 50, height: 50)),
        Expanded(
          child: Column(
            children: [
              Text(course.name),
              Text(course.description, overflow: TextOverflow.ellipsis, maxLines: 3)
            ],
          ),
        ),
        Column(
          children: [
            Text(course.status),
            ElevatedButton(onPressed: () {
              onRedact?.call(course);
            }, child: const Text('Редактировать'))
          ],
        )
      ],
    );
  }
}
