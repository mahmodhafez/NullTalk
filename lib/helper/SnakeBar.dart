import 'package:flutter/material.dart';

void showSnakeBar(BuildContext context, message) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(message, textAlign: TextAlign.center)));
}
