import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account',style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(),
    );
  }
}
