import 'package:flutter/material.dart';

import 'package:nilskrannig/utilities/constants.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;

  MessageBubble({this.text, this.sender, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: kSecondaryTextColor,
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Material(
            borderRadius: isMe ? kIsMeBorderRadius : kNotMeBorderRadius,
            elevation: 5.0,
            color: isMe ? kDarkPrimaryColor : kAccentColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Text(
                text,
                style: kMessageBubbleTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
