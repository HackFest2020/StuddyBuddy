import 'package:flutter/material.dart';
import 'package:study_buddy/UI/sign_in_register/SignInPage.dart';

class DrawerWidget extends StatelessWidget {
  //const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Text("Debug"),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Sign In'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
          },
        )
      ],
    );
  }
}
