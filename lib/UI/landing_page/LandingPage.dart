import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:study_buddy/UI/components/Carousel.dart';
import 'package:study_buddy/UI/components/Drawer.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  List _mainCarouselItems = [
    'My_School_Menu-Student_Hub.png',
    'My_School_Menu-Kumustahan.png',
    'My_School_Menu-LRC_Online.png',
    'My_School_Menu-Study_Buddy.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black87),
          shadowColor: Colors.transparent,
        ),
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 56),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto',
                        //fontWeight: ,
                        fontSize: 36,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Carousel(500, _mainCarouselItems),
              ],
            ),
          ),
        ));
  }
}
