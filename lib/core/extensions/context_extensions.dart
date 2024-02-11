import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  void showSnackBar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }
}