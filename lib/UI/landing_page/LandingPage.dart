import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:study_buddy/UI/components/Carousel.dart';
import 'package:study_buddy/UI/components/Drawer.dart';
import 'package:study_buddy/Models/CarouselModel.dart';

import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
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
                SizedBox(height: 36),
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
                DescriptionText(),
              ],
            ),
          ),
        ));
  }
}

/////UNUSED CODE BELOW

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
    "The student hub gives you direct and immediate access to the Student Affairs Office. Chat is available weekdays from 8am to 5pm, and on Saturdays from 8am to 12noon. We are here to address your concerns, answer questions, and provide information and referrals to provide you with an outstanding NU student experience.",
    "We listen. We help. We counsel. Drop us a message anytime so we can help each other improve through offering support, providing feedback and understanding, increasing self-confidence, and addressing negative self-talk.",
    "Need access to library resources, research support, and study or assignment support?  We’ve got you.  Chat is available weekdays from 8am to 5pm, and on Saturdays from 8am to 12noon.",
    "Need help in overcoming difficulties in a course? Our NU Blue Scholars are here to help you hurdle those. Choose from the list of scholars, courses, and availability. Be it one-on-one or in small groups, our Blue scholars are ready to help you see these difficulties through.",
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
                margin: EdgeInsets.all(24),
                child: Text(
                  descsMap[carouselModel.page],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Roboto',),
                ));
          })
        ]));
  }
}
