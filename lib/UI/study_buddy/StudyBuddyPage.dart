import 'package:flutter/material.dart';
import 'package:study_buddy/Models/BuddyCarouselModel.dart';
import 'package:study_buddy/UI/components/BuddyCarousel.dart';
import 'package:provider/provider.dart';

class StudyBuddyPage extends StatefulWidget {
  StudyBuddyPage({Key key}) : super(key: key);

  @override
  _StudyBuddyPageState createState() => _StudyBuddyPageState();
}

class _StudyBuddyPageState extends State<StudyBuddyPage> {
  List _studyBuddyList = ["man.png", "woman.png"];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BuddyCarouselModel>(
      create: (context) => BuddyCarouselModel(),
      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.blue[800]),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: Text('Study Buddy',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 36,
                                color: Colors.blue[800]))),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        child: Image(
                      image: AssetImage(
                        './assets/img/My_School_Menu-Study_Buddy_nobg.png',
                      ),
                    )),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(children: [
                  SizedBox(height: 24 ),
                  Text(
                    'Meet the Blue Scholars',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                  BuddyCarousel(200, _studyBuddyList),
                  SizedBox(height: 16),
                  Text(
                    'Find your Study Buddy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
