import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.title,
    required this.function,
  });

  final double screenWidth;
  final double screenHeight;
  final String title;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(screenWidth, screenHeight * 0.05),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    );
  }
}
