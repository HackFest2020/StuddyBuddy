import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/LaunchUrl.dart';

Text scholarDesc = Text(
    'If you want to apply for scholarship and discount, you may click the scholarship or discount application link below. Please be reminded that these links will work on the said dates only. \n\nIf you have any questions or clarifications regarding this matter, kindly email us at sao@nu-laguna.edu.ph. ');
Text enrollmentDesc = Text(
    'There are two types of students in NU Laguna, new and continuing students. These two students have different enrollment process for each.\n\nFor continuing students, go to your NUIS, click Student Group, then Online Enrollment and choose the appropriate list of class offering for you. Please refer to the email sent by NU Laguna Registar to your email.\n\nFor new students, please visit the NU Laguna page and follow the steps given in the post. You may also send your questions and inquiries through messenger. Come visit us.');

class ScholarDialog {
  @override
  Widget build(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 15,
              child: Container(
                height: 350.0,
                width: 350.0,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Scholarship &\nDiscount',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]),
                            ),
                          ),
                          Icon(
                            Icons.info_outline,
                            color: Colors.blue[900],
                            size: 30.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 13.0),
                      SizedBox(
                        child: scholarDesc,
                      ),
                      SizedBox(height: 13.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            color: Colors.blue[900],
                            child: Text('Scholarship',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () => LaunchUrl().scholarURL(),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            color: Colors.blue[900],
                            child: Text(
                              'Discount',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => LaunchUrl().discountURL(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}

class EnrollmentDialog {
  @override
  Widget build(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 15,
              child: Container(
                height: 440.0,
                width: 350.0,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Enrollment\nProcess',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]),
                            ),
                          ),
                          Icon(
                            Icons.info_outline,
                            color: Colors.blue[900],
                            size: 30.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 13.0),
                      SizedBox(
                        child: enrollmentDesc,
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}

//class DiscountDialog