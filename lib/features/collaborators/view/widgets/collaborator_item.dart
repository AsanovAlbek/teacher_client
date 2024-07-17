import 'package:flutter/material.dart';
import 'package:teacher_client/core/model/teacher/teacher.dart';
import 'package:teacher_client/core/resources/images.dart';

class CollaboratorItem extends StatelessWidget {
  final Teacher teacher;
  final Function(Teacher)? onDeleteCollaborator;
  const CollaboratorItem({super.key, required this.teacher, this.onDeleteCollaborator});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox.square(child: CircleAvatar(child: AppImages.person)),
            const Spacer(),
            Column(
              children: [
                FittedBox(child: Text(teacher.name)),
                const SizedBox(height: 8),
                FittedBox(child: Text(teacher.email)),
              ],
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () => onDeleteCollaborator?.call(teacher),
              label: const Text('Удалить'),
              icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
