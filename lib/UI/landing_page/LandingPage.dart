import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:study_buddy/UI/components/Carousel.dart';
import 'package:study_buddy/UI/components/Drawer.dart';
import 'package:study_buddy/Models/CarouselModel.dart';
import 'package:study_buddy/UI/account_page/AccountPage.dart';

import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[700], Colors.indigo[800]],
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 56),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountPage()));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('./assets/img/woman.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 48,
                          color: Colors.yellow),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(24, 0, 0, 0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 24,
                            color: Colors.white),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  DescriptionText(),
                ],
              ),
            ),
          ),
        ));
  }
}

class DescriptionText extends StatefulWidget {
  @override
  _DescriptionText createState() => _DescriptionText();
}

class _DescriptionText extends State<DescriptionText> {
  List _mainCarouselItems = [
    'My_School_Menu-Student_Hub.png',
    'My_School_Menu-Kumustahan.png',
    'My_School_Menu-LRC_Online.png',
    'My_School_Menu-Study_Buddy.png'
  ];
  List carouselItemsDescs = [
    "We are here to address your concerns, answer questions, and provide information and referrals to provide you with an outstanding NU student experience.",
    "We listen. We help. We counsel. \nDrop us a message anytime so we can help each other improve through offering support, providing feedback and understanding, increasing self-confidence, and addressing negative self-talk.",
    "Need access to library resources, research support, and study or assignment support?  We’ve got you.",
    "Need help in overcoming difficulties in a course? Our NU Blue Scholars are here to help you hurdle those.",
  ];

  Map descsMap;

  @override
  void initState() {
    descsMap = carouselItemsDescs.asMap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CarouselModel>(
        create: (context) => CarouselModel(),
        child: Column(children: [
          Carousel(400, _mainCarouselItems),
          Consumer<CarouselModel>(builder: (context, carouselModel, child) {
            return Container(
                margin: EdgeInsets.all(36),
                child: Text(
                  descsMap[carouselModel.page],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ));
          })
        ]));
  }
}
