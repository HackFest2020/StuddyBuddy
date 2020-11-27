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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                fillColor: Colors.blue[100],
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
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                fillColor: Colors.blue[100],
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
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blueAccent[400], Colors.blue[900]]),
              onPressed: () {
                if (_formKey.currentState.validate())
                  //TODO: add sign in function here 
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                fillColor: Colors.blue[100],
                filled: true),
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                fillColor: Colors.blue[100],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Confirm Password',
                fillColor: Colors.blue[100],
                filled: true),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (value) {
              // validation logic
            },
          ),
          SizedBox(height: 24),
          GradientButton(
            child: Text(
              'REGISTER',
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.blueAccent[400], Colors.blue[900]]),
            //onPressed:
          )
        ],
      ),
    );
  }
}
