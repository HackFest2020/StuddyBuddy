import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/Models/BuddyCarouselModel.dart';
import 'package:study_buddy/Models/TutorsModel.dart';
import 'package:study_buddy/UI/components/BuddyCarousel.dart';
import 'package:provider/provider.dart';
import 'package:study_buddy/UI/components/ProgramCard.dart';
import 'package:study_buddy/UI/study_buddy/StudyBuddyProgramsPage.dart';

class StudyBuddyPage extends StatelessWidget {
  List _blueScholarList = [];
  List _studyBuddyList = [];

  final firestoreInstance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BuddyCarouselModel>(
            create: (context) => BuddyCarouselModel()),
        //ChangeNotifierProvider<TutorModel>(create: (context) => TutorModel())
      ],
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
                  SizedBox(height: 24),
                  Text(
                    'Meet the Blue Scholars',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('tutors')
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> asyncSnapshot) {
                      if (asyncSnapshot.hasData) {
                        List<DocumentChange> snapshot =
                            asyncSnapshot.data.docChanges;
                        snapshot.forEach((DocumentChange change) {
                          _blueScholarList.add(
                            Tutor(
                                id: change.doc.id,
                                bio: change.doc.data()['bio'],
                                department: change.doc.data()['department'],
                                email: change.doc.data()['email'],
                                gender: change.doc.data()['gender'],
                                name: change.doc.data()['name'],
                                program: change.doc.data()['program'],
                                sectionYr: change.doc.data()['sectionYr'],
                                userName: change.doc.data()['userName'],
                                userType: change.doc.data()['userType']
                                //value: change.document.data['value'],
                                ),
                          );
                        });

                        _blueScholarList.forEach((element) {
                          if (element.gender == 'F') {
                            _studyBuddyList.add('woman.png');
                          } else if (element.gender == 'M') {
                            _studyBuddyList.add('man.png');
                          }
                        });
                        return Container(
                            height: 200,
                            child: BuddyCarousel(200, _studyBuddyList));
                      } else if (asyncSnapshot.hasError) {
                        return Text('There was an error...');
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                  //BuddyCarousel(200, _studyBuddyList),
                  SizedBox(height: 16),
                  Divider(),
                  SizedBox(height: 16),
                  Text(
                    'Find your Study Buddy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Choose your department',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StudyBuddyProgramsPage('CCS')));
                      },
                      child: ProgramCard('ccs.png', Colors.orange, 125, 'CCS')),
                  SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StudyBuddyProgramsPage('CAS')));
                      },
                      child:
                          ProgramCard('cas.png', Colors.pink[300], 125, 'CAS')),
                  SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StudyBuddyProgramsPage('COE')));
                      },
                      child: ProgramCard(
                          'coe.png', Colors.lightBlue[200], 125, 'COE')),
                  SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StudyBuddyProgramsPage('CBMA')));
                      },
                      child: ProgramCard('cbma.png', Colors.blue, 125, 'CBMA')),
                  SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StudyBuddyProgramsPage('APC')));
                      },
                      child: ProgramCard(
                          'apc.png', Colors.indigo[700], 125, 'APC')),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
