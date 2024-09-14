import 'package:flutter/material.dart';
import 'package:teacher_client/core/resources/images.dart';

class UserInfoBar extends StatelessWidget {
  final int health;
  final int experience;
  final String username;
  final CircleAvatar? avatar;

  const UserInfoBar(
      {super.key,
      this.health = 100,
      this.experience = 0,
      this.username = 'username',
      this.avatar});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50, height: 50,child: avatar ?? CircleAvatar(child: AppImages.person)),
        const SizedBox(width: 10),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(username),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                LinearProgressIndicator(
                  backgroundColor: const Color.fromRGBO(255, 156, 156, 1),
                  color: const Color.fromRGBO(224, 0, 0, 1),
                  value: health.toDouble() / 100,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.heart_broken,
                  color: Color.fromRGBO(224, 0, 0, 1),
                ),
              ],
            ),
            Row(
              children: [
                LinearProgressIndicator(
                  backgroundColor: const Color.fromRGBO(255, 195, 40, 0.42),
                  color: const Color.fromRGBO(255, 195, 40, 1),
                  value: experience.toDouble() / 100,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.attach_money,
                  color: Color.fromRGBO(255, 195, 40, 1),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
