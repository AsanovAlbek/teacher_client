import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeletableItem extends StatelessWidget {
  final Widget child;
  final Function deleteClick;
  const DeletableItem({super.key, required this.child, required this.deleteClick});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
              onPressed: () => deleteClick.call(),
              icon: const Icon(Icons.delete, color: Colors.red)),
        ),
        child
      ],
    );
  }

}