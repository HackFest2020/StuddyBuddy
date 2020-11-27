import 'package:flutter/material.dart';
import 'package:study_buddy/UI/kumustahan/KumustahanPage.dart';
import 'package:study_buddy/UI/lrc_online/LrcOnlinePage.dart';
import 'package:study_buddy/UI/sign_in_register/SignInPage.dart';
import 'package:study_buddy/UI/student_hub/StudentHubPage.dart';
import 'package:study_buddy/UI/study_buddy/StudyBuddyPage.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(),
          child: Text(
            'My School App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          //leading: Icon(Icons.message),
          title: Text('Sign In (DEBUG ONLY)'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignInPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.device_hub, color: Colors.blue),
          title: Text(
            'Student Hub',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StudentHubPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.chat_bubble_outline, color: Colors.blue),
          title: Text(
            'Kumustahan',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KumustahanPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.bookmark_border, color: Colors.blue),
          title: Text(
            'LRC Online',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LrcOnlinePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.people_outline, color: Colors.blue),
          title: Text(
            'Studdy Buddy',
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StudyBuddyPage()));
          },
        ),
      ],
    );
  }
}
