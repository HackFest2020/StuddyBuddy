import 'package:flutter/material.dart';

class StudyBuddyProgramsPage extends StatelessWidget {
  String _department;
  String _imgName;
  String _depText;
  Color _color;
  String _program;

  StudyBuddyProgramsPage(String department) {
    _department = department;
  }

  @override
  Widget build(BuildContext context) {
    if (_department == 'CCS') {
      _imgName = 'ccs.png';
      _color = Colors.orange;
      _depText = 'College of Computer Studies';
    } else if (_department == 'CAS') {
      _imgName = 'cas.png';
      _color = Colors.pink[300];
      _depText = 'College of Arts and Sciences';
    } else if (_department == 'COE') {
      _imgName = 'coe.png';
      _color = Colors.lightBlue[200];
      _depText = 'College of Engineering';
    } else if (_department == 'CBMA') {
      _imgName = 'cbma.png';
      _color = Colors.blue;
      _depText = 'College of Business Management and Accountancy';
    } else if (_department == 'APC') {
      _imgName = 'apc.png';
      _color = Colors.indigo[700];
      _depText = 'Asia Pacific College';
    }

    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.w),

        backgroundColor: _color,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: _color,
              child: Stack(children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 8, 24, 8),
                    alignment: Alignment.centerRight,
                    child: Image.asset('./assets/img/' + _imgName,
                        fit: BoxFit.contain)),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _department,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 48,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(24, 24, 24, 48),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _depText,
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Study buddies',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      //ListView(),
                    ]))
          ],
        ),
      ),
    );
  }
}
