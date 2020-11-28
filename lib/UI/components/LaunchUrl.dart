import 'package:url_launcher/url_launcher.dart';

class LaunchUrl {
  scholarURL() async {
    const url = 'https://bit.ly/ScholarshipApplication2ndTerm';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  discountURL() async {
    const url = 'https://bit.ly/DiscountApplication2ndTerm';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
