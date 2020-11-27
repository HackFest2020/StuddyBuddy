import 'package:flutter/material.dart';
import 'package:study_buddy/UI/landing_page/LandingPage.dart';
import 'package:study_buddy/UI/sign_in_register/SignInPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: uncomment code below after firebase is set up
  //await Firebase.initializeApp();
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
      title: 'MySchool App',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: SignInPage(),
    );
  }
}
