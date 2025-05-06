import 'package:flutter/material.dart';

class NullTalkTheme {
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xFF121212),
      primaryColor: Color(0xFFFF0000),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1F1F1F),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFF1F1F1F),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: Colors.white54),
      ),
      textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.redAccent),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFFF0000),
        foregroundColor: Colors.white,
      ),
    );
  }
}
