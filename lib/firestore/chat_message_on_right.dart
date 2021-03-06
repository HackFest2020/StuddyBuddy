import 'package:flutter/material.dart';

class ChatMessageOnRight extends StatelessWidget {
  final int index;
  final Map<String, dynamic> data;
  final bool showAvatar;

//chats that is shown on the right side
  const ChatMessageOnRight(
      {Key key, this.index, this.data, this.showAvatar = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showAvatar)
            CircleAvatar(
              backgroundImage: NetworkImage(data['photo_url']),
            )
          else
            SizedBox(width: 40),
          Container(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${data['author']}:',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(data['value']),
              ],
            ),
          )
        ],
      ),
    );
  }
}
