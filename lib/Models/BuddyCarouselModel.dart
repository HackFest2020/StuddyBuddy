import 'package:flutter/cupertino.dart';

import 'package:study_buddy/UI/study_buddy/BuddyPage.dart';


class BuddyCarouselModel extends ChangeNotifier {
  int page = 0;

  void changeDescription(int index) {
    page = index;
    notifyListeners();
  }

  Map passTutor(List list) {
    return list[page];
  }
}
