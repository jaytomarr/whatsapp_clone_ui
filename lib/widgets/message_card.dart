import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class MessageCard extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  const MessageCard({
    super.key,
    required this.message,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isMe ? 8 : 0),
              topRight: Radius.circular(isMe ? 0 : 8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          color: isMe ? messageColor : senderMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 30,
                  left: 10,
                  right: 30,
                ),
                child: Text(message, style: TextStyle(fontSize: 16)),
              ),
              Positioned(
                bottom: isMe ? 4 : 2,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(fontSize: 13, color: Colors.white60),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.done_all_rounded,
                      size: 20,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
