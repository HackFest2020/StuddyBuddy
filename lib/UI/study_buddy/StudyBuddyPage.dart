import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/Drawer.dart';

class StudyBuddyPage extends StatefulWidget {
  StudyBuddyPage({Key key}) : super(key: key);

  @override
  _StudyBuddyPageState createState() => _StudyBuddyPageState();
}

class _StudyBuddyPageState extends State<StudyBuddyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Study Buddy',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(),
    );
  }
}
