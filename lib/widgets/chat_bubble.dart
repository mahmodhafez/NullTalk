import 'package:flutter/material.dart';

class ChatBubbleSender extends StatelessWidget {
  ChatBubbleSender({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,

      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),

        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: Color(0xFF641d18),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Text(message),
      ),
    );
  }
}

class ChatBubbleReceive extends StatelessWidget {
  const ChatBubbleReceive({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,

      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),

        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: Color(0xFFb0332a),

          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(0),
          ),
        ),
        child: Text(message),
      ),
    );
  }
}
