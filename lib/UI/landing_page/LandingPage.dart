import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:study_buddy/UI/components/Carousel.dart';

class LandingPage extends StatelessWidget {
  List items = ["hello", "hi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              Carousel(128, items),
            ],
          ),
        ),
      ),
    );
  }
}
