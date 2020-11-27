import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySchool App',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: StudentHome(),
    );
  }
}

class StudentHome extends StatelessWidget {
  Widget cardLists = ListView(
    children: [
      Container(
          margin: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
          child: Row(
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'My School',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[900],
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Announcements',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[900],
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[900],
              )
            ],
          )),
      Container(
        child: Card(
            margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 5.0),
            shadowColor: Colors.grey,
            borderOnForeground: true,
            elevation: 2,
            child: Column(
              children: [
                Image.asset('assets/images/My_School_Student_Hub.png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Student Hub'),
                )
              ],
            )),
      ),
      Container(
        child: Card(
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            shadowColor: Colors.grey,
            borderOnForeground: true,
            elevation: 2,
            child: Column(
              children: [
                Image.asset('assets/images/My_School_Study_Buddy.png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Study Buddy'),
                )
              ],
            )),
      ),
      Container(
        child: Card(
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            shadowColor: Colors.grey,
            borderOnForeground: true,
            elevation: 2,
            child: Column(
              children: [
                Image.asset('assets/images/My_School_LRC_Online.png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('LRC Online'),
                )
              ],
            )),
      ),
      Container(
        child: Card(
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            shadowColor: Colors.grey,
            borderOnForeground: true,
            elevation: 2,
            child: Column(
              children: [
                Image.asset('assets/images/My_School_Kumustahan.png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Kumustahan'),
                )
              ],
            )),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.list),
          onPressed: () {
            print('List Pressed');
          },
          color: Colors.amber,
        ),
        title: Text('My School',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[900],
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            color: Colors.amber,
            onPressed: () {
              print('Help Clicked!');
            },
          )
        ],
      ),
      body: cardLists,
      floatingActionButton: FloatingActionButton(
        focusElevation: 5,
        backgroundColor: Colors.blue[900],
        onPressed: () {
          print('Chat Clicked!');
        },
        child: Icon(
          Icons.chat,
          color: Colors.amber,
          size: 25,
        ),
      ),
    );
  }
}
