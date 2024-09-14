import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProgressItem extends StatelessWidget {
  final double value;
  final SvgPicture icon;
  final Color foregroundColor;
  final Color backgroundColor;

  const UserProgressItem(
      {super.key,
      required this.value,
      required this.icon,
      required this.foregroundColor,
      required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: LinearProgressIndicator(
            value: value / 100,
            color: foregroundColor,
            backgroundColor: backgroundColor,
            minHeight: 20,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(width: 4),
        icon
      ],
    );
  }
}
