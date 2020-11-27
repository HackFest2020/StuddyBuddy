import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email;
  String _password;
//////////////////////////////////////////////START FIREBASEAUTH FUNCTIONS! DON'T TOUCH!
  Future<void> _createUser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
      print("User: $userCredential");
    } on FirebaseAuthException catch (e) {
      print("Error: $e");
    } catch(e) {
      print("Error: $e");
    }
  }

  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
      print("User: $userCredential");
    } on FirebaseAuthException catch (e) {
      print("Error: $e");
    } catch(e) {
      print("Error: $e");
    }
  }

  Future<void> _signInWithGoogle() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    GoogleSignIn googleSignIn = GoogleSignIn();
    final acc = await googleSignIn.signIn();
    final auth = await acc.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken
    );
    final res = await _auth.signInWithCredential(credential);
    return res.user;
  }
/////////////////////////////////////////END FIREBASEAUTH FUNCTIONS! DON'T TOUCH!
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Sign up"),
     ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  _email = value;
                  print("Email: $value");
                },
                decoration: InputDecoration(hintText: "E-mail"),
              ),
              TextField(
                 onChanged: (value) {
                  _password = value;
                },
                decoration: InputDecoration(hintText: "Password"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                MaterialButton(
                  onPressed: _signIn,
                  child: Text("Sign in"),
                  ),
                MaterialButton(
                  onPressed: _createUser,
                  child: Text("Create new account"),
                  ),
                  Flexible(
                  child: MaterialButton(
                    onPressed: _signInWithGoogle,
                    child: Text("Sign in with Google"),
                    ),
                  )
               ],
              )
            ],
          ),
        ),
        ),
    );
  }
}
