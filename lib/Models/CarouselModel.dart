import 'package:flutter/cupertino.dart';

import 'package:study_buddy/UI/kumustahan/KumustahanPage.dart';
import 'package:study_buddy/UI/lrc_online/LrcOnlinePage.dart';
import 'package:study_buddy/UI/student_hub/StudentHubPage.dart';
import 'package:study_buddy/UI/study_buddy/StudyBuddyPage.dart';

class CarouselModel extends ChangeNotifier {
  int page = 0;
  Widget _widget;

  void changeDescription(int index) {
    page = index;
    notifyListeners();
  }

  Widget navigateToPage() {
    if (page == 0) {
      _widget = StudentHubPage();
    } else if (page == 1) {
      _widget = KumustahanPage();
    } else if (page == 2) {
      _widget = LrcOnlinePage();
    } else if (page == 3) {
      _widget = StudyBuddyPage();
    }

    return _widget;
  }
}
