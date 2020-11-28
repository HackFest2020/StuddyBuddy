import 'package:flutter/material.dart';
import 'package:study_buddy/firestore/StudentHubChatScreen.dart';
import 'package:study_buddy/UI/components/LearnMoreDialog.dart';

class StudentHubPage extends StatefulWidget {
  StudentHubPage({Key key}) : super(key: key);

  @override
  _StudentHubPageState createState() => _StudentHubPageState();
}

class _StudentHubPageState extends State<StudentHubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Text('Student Hub',
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
                      './assets/img/My_School_Menu-Student_Hub_nobg.png',
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
              padding: EdgeInsets.all(24),
              //alignment: Alignment.centerLeft,
              child: Column(children: [
                Text(
                  'FAQs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Chat is available weekdays from 8am to 5pm, and on Saturdays from 8am to 12noon.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'Announcements',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        margin: EdgeInsets.all(24),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                                child: Icon(
                                  Icons.school,
                                ),
                              ),
                              Text("Scholarship Application"),
                              SizedBox(height: 16),
                              OutlineButton(
                                onPressed: () =>  ScholarDialog().build(context),
                                child: Text('Learn More'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                                child: Icon(
                                  Icons.list_alt,
                                ),
                              ),
                              Text("Enrollment Process"),
                              SizedBox(height: 16),
                              OutlineButton(
                                onPressed: () => EnrollmentDialog().build(context),
                                child: Text('Learn More'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 16),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16),
                CircleAvatar(
                  backgroundImage: AssetImage('./assets/img/sao.png'),
                  backgroundColor: Colors.yellow,
                  radius: 40,
                ),
                SizedBox(height: 16),
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('sao@nu-laguna.edu.ph'),
                SizedBox(height: 8),
                Text(
                  'Microsoft Teams Chat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('mdrobediso@nu-laguna.edu.ph'),
                SizedBox(height: 8),
                Text(
                  'Contact Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('09510668847'),
              ]),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(
               builder: (context) => ChatMainScreen(title: 'Student Hub',)));
        },
      ),
    );
  }
}
