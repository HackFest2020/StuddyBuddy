import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  //StudentDashboard
  Color primaryBlue = Colors.blue[900];

  Widget cardLists = ListView(
    children: [
      Container(
          margin: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
          child: Row(
            children: [
              FlatButton(
                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                onPressed: () {},
                child: Text(
                  'My School',
                  style: TextStyle(color: Colors.blue[900], fontSize: 15, fontWeight: FontWeight.bold),
                ),
                color: Colors.transparent,
              ),
              FlatButton(
                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                onPressed: () {},
                child: Text(
                  'Announcements',
                  style: TextStyle(color: Colors.blue[900], fontSize: 15, fontWeight: FontWeight.bold),
                ),
                color: Colors.transparent,
              ),
              FlatButton(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                minWidth: 5.0,
                onPressed: () {},
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.blue[900], fontSize: 15, fontWeight: FontWeight.bold),
                ),
                color: Colors.transparent,
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

  Widget myDrawer = Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Text(
            'My School App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.device_hub, color: Colors.blue),
          title: Text('Student Hub'),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        ),
        ListTile(
          leading: Icon(Icons.people, color: Colors.blue),
          title: Text('Study Buddy'),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        ),
        ListTile(
          leading: Icon(Icons.book, color: Colors.blue),
          title: Text('LRC Online'),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        ),
        ListTile(
          leading: Icon(Icons.chat_bubble_outline, color: Colors.blue),
          title: Text('Kumustahan'),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        ),
      ],
    ),
  );

  //Supposed to be Help Icon
  Widget myEndDrawer = Drawer(
      child: ListView(
    children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue[900],
            shape: BoxShape.rectangle,
          ),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Text('Featured Help',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)),
              FlatButton(
                child: Text('How to use My School?', style: TextStyle(color: Colors.white, fontSize: 15)),
                color: Colors.transparent,
                onPressed: (){},
              ),
              FlatButton(
                child: Text("What's new in My School?", style: TextStyle(color: Colors.white, fontSize: 15)),
                color: Colors.transparent,
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Downloadable Files', style: TextStyle(color: Colors.white, fontSize: 15)),
                color: Colors.transparent,
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    ]
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer,
      endDrawer: myEndDrawer,
      appBar: AppBar(
        title: Text('My School',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[900],
        iconTheme: IconThemeData(color: Colors.amber),
        actions: [
          Builder(
            builder: (context) => IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () => Scaffold.of(context).openEndDrawer()
            )
            ),
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
