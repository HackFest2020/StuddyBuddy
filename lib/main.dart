import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/UI/landing_page/LandingPage.dart';
import 'package:study_buddy/UI/sign_in_register/SignInPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget _first = LandingPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My School',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        fontFamily: 'Roboto',
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {

Widget _first = LandingPage();

final Future<FirebaseApp> _init = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _init,
      builder: (context, snapshot) {
        if(snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          // return HomePage();
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                User user = snapshot.data;
                if(user == null) {
                  print("user is null!");
                  return SignInPage();
                }
                else {
                  print("user is here!");
                  return _first;
                }
              }
          return Scaffold(
             body: Center(
               child: CircularProgressIndicator(),
                 ),
            );
          }
         );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
            ),
        );
      },
    );
  }
}
