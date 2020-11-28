import 'package:flutter/material.dart';

class ProgramCard extends StatelessWidget {
  String _imgName;
  Color _color;
  double _height;
  String _title;
  String _program;

  ProgramCard(String imgName, Color color, double height, String title, [String program]) {
    _imgName = imgName;
    _color = color;
    _height = height;
    _title = title;
    _program = program;
  }

  @override
  Widget build(BuildContext context) {
    if (_program == null)
      _program = " ";


    return Container(
      height: _height,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 5,
        borderOnForeground: true,
        semanticContainer: true,
        color: _color,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Stack(children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 8, 24, 8),
              alignment: Alignment.centerRight,
              child:
                  Image.asset('./assets/img/' + _imgName, fit: BoxFit.contain)),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _title,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: Colors.white),
                ),
                Text(
                  _program,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
