import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/UI/sign_in_register/SignInPage.dart';

class AccountPage extends StatelessWidget {
  //const AccountPage({Key key}) : super(key: key);

  String _userName = 'Maureen';
  String _name = 'Maureen Kate R. Dadap';
  String _userType = 'Student';
  String _email = 'maureendadap@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountPage()));
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('./assets/img/woman.png'),
                  backgroundColor: Colors.yellow,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                _userName,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                _userType,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              Divider(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Name',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(_name),
                    SizedBox(height: 8),
                    Text(
                      'Email',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(_email),
                    // OutlineButton(
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ),
              Divider(),
              Container(
                  child: TextButton(
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                      (route) => false);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
