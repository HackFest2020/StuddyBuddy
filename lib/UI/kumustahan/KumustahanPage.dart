import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/Drawer.dart';

class KumustahanPage extends StatefulWidget {
  KumustahanPage({Key key}) : super(key: key);

  @override
  _KumustahanPageState createState() => _KumustahanPageState();
}

class _KumustahanPageState extends State<KumustahanPage> {
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
                      child: Text('Kumustahan',
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
                      './assets/img/My_School_Menu-Kumustahan_nobg.png',
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
                  'Quote of the Day',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16),
                Row(children: [
                  Expanded(
                    child: Container(
                        child: Image(
                      image: AssetImage(
                        './assets/img/man.png',
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "\"Don't let mental blocks control you. Set yourself free. Confront your fear and turn the mental blocks into building blocks.\"",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ]),
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 16),
                SizedBox(
                    height:
                        600), //TODO: change height once content is figured out
              ]),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
      ),
    );
  }
}
