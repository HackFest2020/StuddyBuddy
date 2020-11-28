import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/ProgramCard.dart';

class BuddyPage extends StatelessWidget {
  String _userName;
  String _name;
  String _userType;
  String _email;
  String _bio;
  String _department;
  String _program;
  String _imgName;
  String _sectionYr;

  Color _color;

  @override
  Widget build(BuildContext context) {
    _userName = 'Maureen';
    _name = 'Maureen Kate R. Dadap';
    _userType = 'Student';
    _email = 'maureendadap@gmail.com';
    _bio =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua';
    _department = 'CCS';
    _program = 'Computer Science';
    _sectionYr = 'BSCS191A';

    if (_department == 'CCS') {
      _imgName = 'ccs.png';
      _color = Colors.orange;
    } else if (_department == 'CAS') {
      _imgName = 'cas.png';
      _color = Colors.pink[300];
    } else if (_department == 'COE') {
      _imgName = 'coe.png';
      _color = Colors.lightBlue[200];
    } else if (_department == 'CBMA') {
      _imgName = 'cbma.png';
      _color = Colors.blue;
    } else if (_department == 'APC') {
      _imgName = 'apc.png';
      _color = Colors.indigo[700];
    }

    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          'Study Buddy',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        child: Card(
          margin: EdgeInsets.fromLTRB(24, 16, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 48,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('./assets/img/man.png'),
                    backgroundColor: Colors.yellow,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    _userName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _userType,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                      _bio,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: ProgramCard(
                        _imgName, _color, 125, _department, _program),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  Row(children: [Container(), Container()]),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Personal Information',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Name',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(_name),
                        SizedBox(height: 8),
                        Text(
                          'Email',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(_email),
                        SizedBox(height: 8),
                        Text(
                          'Year and Section',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(_sectionYr),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
      ),
    );
  }
}
