import 'package:flutter/cupertino.dart';

import 'package:study_buddy/UI/study_buddy/BuddyPage.dart';


class BuddyCarouselModel extends ChangeNotifier {
  int page = 0;
  Widget _widget;

  void changeDescription(int index) {
    page = index;
    notifyListeners();
  }

  Widget navigateToPage() {
    if (page == 0) {
      _widget = BuddyPage(); //TODO: not final
    } else if (page == 1) {
      _widget = BuddyPage(); //TODO: not final
    } 
    return _widget;
  }
}
