import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/UI/landing_page/LandingPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: uncomment code below after firebase is set up
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //TODO: add auth checker before loading main
  //show different screen when: loading user, if not signedIn/registered or vice versa
  //change value of _first once determined
  Widget _first = LandingPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My School',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: _first,
    );
  }
}
