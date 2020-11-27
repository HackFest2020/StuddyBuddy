import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/Drawer.dart';

class StudentHubPage extends StatefulWidget {
  StudentHubPage({Key key}) : super(key: key);

  @override
  _StudentHubPageState createState() => _StudentHubPageState();
}

class _StudentHubPageState extends State<StudentHubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Hub',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(),
    );
  }
}
