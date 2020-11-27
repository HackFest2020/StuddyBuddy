import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/Drawer.dart';

class LrcOnlinePage extends StatefulWidget {
  LrcOnlinePage({Key key}) : super(key: key);

  @override
  _LrcOnlinePageState createState() => _LrcOnlinePageState();
}

class _LrcOnlinePageState extends State<LrcOnlinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LRC Online',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(),
    );
  }
}
