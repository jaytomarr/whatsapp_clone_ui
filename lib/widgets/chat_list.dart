import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/info.dart';
import 'package:whatsapp_clone/widgets/message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
            isMe: true,
          );
        } else {
          return MessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
            isMe: false,
          );
        }
      },
    );
  }
}
