import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:study_buddy/UI/components/Forms.dart';
import 'package:study_buddy/UI/sign_in_register/RegisterPage.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  @override
  void initState() {
    super.initState();
  }

//firebase auth google integ
  Future<void> _signInWithGoogle() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    GoogleSignIn googleSignIn = GoogleSignIn();
    final acc = await googleSignIn.signIn();
    final auth = await acc.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken, idToken: auth.idToken);
    final res = await _auth.signInWithCredential(credential);
    return res.user;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 128),
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 24),
                SignInForm(),
                SizedBox(height: 24),
                Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue[800], fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                Row(children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 30,
                       child: Center(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SignInButton(
                                    Buttons.Google,
                                    onPressed: _signInWithGoogle,
                              ),
                               SignInButton(
                                    Buttons.Twitter,
                                    onPressed: () {},
                              )
                            ],
                         ),
                       ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ]),
                SizedBox(height: 36),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet? "),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      child: Text("Register Here",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
