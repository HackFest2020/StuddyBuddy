import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/Drawer.dart';

class LrcOnlinePage extends StatefulWidget {
  LrcOnlinePage({Key key}) : super(key: key);

  @override
  _LrcOnlinePageState createState() => _LrcOnlinePageState();
}

class _LrcOnlinePageState extends State<LrcOnlinePage> {
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
                      child: Text('LRC Online',
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
                      './assets/img/My_School_Menu-LRC_Online_nobg.png',
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
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "How to borrow and return book/s?",
                          ),
                          SizedBox(height: 8),
                          OutlineButton(
                            onPressed: () {},
                            child: Text('Learn More'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "How to get a library card?",
                          ),
                          SizedBox(height: 8),
                          OutlineButton(
                            onPressed: () {},
                            child: Text('Learn More'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "How to access electronic resources at home?",
                          ),
                          SizedBox(height: 8),
                          OutlineButton(
                            onPressed: () {},
                            child: Text('Learn More'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 300), //TODO: fix sizedbox height once content is figured out
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
