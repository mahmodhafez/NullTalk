import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_bubble.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              kLogo,
              height: screenHeight * 0.15,
              width: screenWidth * 0.15,
            ),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 9,
              itemBuilder:
                  (context, index) => Align(
                    alignment: Alignment.centerLeft,

                    child: ChatBubble(),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(

              decoration: InputDecoration(
              hintText: 'Send Message',
                contentPadding: const EdgeInsets.all(8.0),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  color: kPrimaryColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
