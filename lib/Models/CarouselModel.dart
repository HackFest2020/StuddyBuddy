import 'package:flutter/cupertino.dart';

class CarouselModel extends ChangeNotifier{
  int page = 0;

  void changeDescription(int index) {
    page = index;
    notifyListeners();
  }
}
