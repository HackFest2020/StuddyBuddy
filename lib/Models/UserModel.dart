import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier {
  String userType;

  void userChanges() {
    notifyListeners();
  }
}
