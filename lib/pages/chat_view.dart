import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_bubble.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key});

  CollectionReference messages = FirebaseFirestore.instance.collection(
    kMessagesCollections,
  );
  TextEditingController textFieldController = TextEditingController();
  ScrollController listController = ScrollController();

  @override
  Widget build(BuildContext context) {
    String email = ModalRoute.of(context)!.settings.arguments as String;
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
            child: StreamBuilder<QuerySnapshot>(
              stream: messages.orderBy(kCreateAt, descending: true).snapshots(),

              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<MessageModel> messagesList = [];
                  for (int i = 0; i < snapshot.data!.docs.length; i++) {
                    messagesList.add(
                      MessageModel.fromJson(snapshot.data!.docs[i]),
                    );
                  }
                  return ListView.builder(
                    reverse: true,
                    controller: listController,
                    itemCount: messagesList.length,
                    itemBuilder: (context, index) {
                      print(messagesList[index].id);
                      return messagesList[index].id == email
                          ? ChatBubbleSender(
                            message: messagesList[index].message,
                          )
                          : ChatBubbleReceive(
                            message: messagesList[index].message,
                          );
                    },
                  );
                } else {
                  return Center(child: Text('Loading...'));
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              controller: textFieldController,
              onSubmitted: (value) {
                messages.add({
                  kId: email,

                  kMessage: value,
                  kCreateAt: DateTime.now(),
                });

                textFieldController.clear();
                listController.animateTo(
                  0,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
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
