import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 4 , horizontal: 10),

      padding: EdgeInsets.symmetric(vertical: 30 ,horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.amber,

        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Text('Text'),
    );
  }
}
