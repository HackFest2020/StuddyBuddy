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
      appBar: AppBar(
        title: Text(
          'Kumustahan',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(),
    );
  }
}
