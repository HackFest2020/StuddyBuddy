import 'package:flutter/material.dart';

class MessageForm extends StatefulWidget {
  MessageForm({Key key}) : super(key: key);

  @override
  _MessageFormState createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Chat"),),
    );
  }
}
