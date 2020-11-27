import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/UI/landing_page/LandingPage.dart';

import 'package:email_validator/email_validator.dart';


import 'Buttons.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

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


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            onChanged: (value) {
              _email = value;
              print("Email: $value");
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                fillColor: Colors.blue[50],
                filled: true),
            validator: (_email) {
              if (_email.isEmpty) {
                return 'Email cannot be empty';
              } else if (EmailValidator.validate(_email) == false) {
                return 'Not a valid email';
              }
            },
          ),
          SizedBox(height: 16),
          TextFormField(
              onChanged: (value) {
              _password = value;
              print("password: $value");
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                fillColor: Colors.blue[50],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (_password) {
              if (_password.isEmpty) {
                return "Password can't be empty";
              }
              // validation logic
            },
          ),
          SizedBox(height: 24),
          GradientButton(
              child: Text(
                'SIGN IN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.lightBlueAccent[100], Colors.blue[700]]),
              onPressed: () {
                if (_formKey.currentState.validate())
                     _signIn();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                    (route) => false);
              })
        ],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  String _cPassword;

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(onChanged: (value) {
              _email = value;
              print("Email: $value");
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                fillColor: Colors.blue[50],
                filled: true),
            validator: (_email) {
              if (_email.isEmpty) {
                return 'Email cannot be empty';
              } else if (EmailValidator.validate(_email) == false) {
                return 'Not a valid email';
              }
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            onChanged: (value) {
              _password = value;
              print("password: $value");
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                fillColor: Colors.blue[50],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              if(_password.length < 8) {
                return "Password must be 8+ characters";
              } else if (_password.isEmpty) {
                return "Password can't be empty";
              }
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Confirm Password',
                fillColor: Colors.blue[50],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (val) {
              if(_password != val) {
                return "Passwords must be the same";
              } else if (val.isEmpty) {
                return "Password can't be empty";
              }
            },
          ),
          SizedBox(height: 24),
          GradientButton(
            child: Text(
              'REGISTER',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lightBlueAccent[100], Colors.blue[700]]),
            onPressed: () {
                if (_formKey.currentState.validate())
                     _createUser();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                    (route) => false);
              }
          )
        ],
      ),
    );
  }
}
