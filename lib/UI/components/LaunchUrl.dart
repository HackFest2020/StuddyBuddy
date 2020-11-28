import 'package:url_launcher/url_launcher.dart';

//TODO: Makes identical google forms

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

  borrowURL() async {
    const url = 'https://forms.office.com/Pages/ResponsePage.aspx?id=dx-YHaM8rkaw1OgETmx_hOzHuL17BTJGu1rwIpNIBI9UREJCUU0yWU5OTkM4NDJIVENPRVFQWE5CNS4u&fbclid=IwAR3UZ2QpEIyu6TP0Qqgpfw8WMweenV0WhB4l3FPg1I3EdUZYQp0xxn1ltkQ';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  returnURL() async {
    const url = 'https://forms.office.com/Pages/ResponsePage.aspx?id=dx-YHaM8rkaw1OgETmx_hOzHuL17BTJGu1rwIpNIBI9UREJCUU0yWU5OTkM4NDJIVENPRVFQWE5CNS4u&fbclid=IwAR3UZ2QpEIyu6TP0Qqgpfw8WMweenV0WhB4l3FPg1I3EdUZYQp0xxn1ltkQ';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  applyCardURL() async {
    const url = 'https://forms.office.com/Pages/ResponsePage.aspx?id=dx-YHaM8rkaw1OgETmx_hOzHuL17BTJGu1rwIpNIBI9UREJCUU0yWU5OTkM4NDJIVENPRVFQWE5CNS4u&fbclid=IwAR3UZ2QpEIyu6TP0Qqgpfw8WMweenV0WhB4l3FPg1I3EdUZYQp0xxn1ltkQ';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
