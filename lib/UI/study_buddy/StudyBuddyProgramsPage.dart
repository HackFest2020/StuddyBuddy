import 'package:flutter/material.dart';

class StudyBuddyProgramsPage extends StatelessWidget {
  String _department;

  StudyBuddyProgramsPage(String department) {
    _department = department;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _department,
          style: TextStyle(color: Colors.black87),
        ),
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(),
    );
  }
}
