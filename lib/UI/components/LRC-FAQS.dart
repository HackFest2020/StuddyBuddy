import 'package:flutter/material.dart';

class BorrowReturn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.yellow),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 50),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      child: Text('FAQs: Books',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 36,
                              color: Colors.yellow))),
                ),
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
              padding: EdgeInsets.all(24),
              //alignment: Alignment.centerLeft,
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Icon(Icons.circle, size: 10,),
                        SizedBox(width: 5.0),
                        Text('How to return book/s?', style: TextStyle(fontFamily: 'Roboto', fontSize: 17, fontWeight: FontWeight.bold),),
                      ],),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 5, 10, 10),
                        child: Column(
                          children: [
                            Text('Fill out the Return Book/s form which is provided in the Transaction Tab of LRC Online.', style: TextStyle(fontWeight: FontWeight.w800)),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('This is to inform the librarian that you are about to return the book/s.'),
                            ),
                            Text('Unreturned book/s can be returned into two ways: \n\nFIRST OPTION', style: TextStyle(fontWeight: FontWeight.w800)),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('Return the book at the school\n\na. Return the book/s at the gate of the school.\nb. Write your name and your program and contact details in a sticky note and attached it to the book/s. We will contact you once we clear your name from the NUIS.\nc. Advise  the guard to inform the library staff that you will return the book/s you borrowed.\n\nIf the guard allowed you to enter at the school premises, directly go to the library to return the book/s.'),
                            ),
                            Text('SECOND OPTION                                                     ', textAlign: TextAlign.start , style: TextStyle(fontWeight: FontWeight.w800)),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('Return the book thru courier (LBC or any)\n\na. Please make sure to indicate your name as the sender of the package and your contact details. We will contact you once we clear your name from the NUIS.\nb. Kindly address the package to,\n\nTo: Annabeth E. Adag\nNU Laguna\nKm53 Pan Philippine Highway, Brgy. Milagrosa, Calamba\n\nOnce we received the book/s, we will clear your name from the NUIS and contact you so you can view your grades.\n\nNote: Fines will be waive. '),
                            ),
                          ],
                        )
                      ),
                      Row(children: [
                        Icon(Icons.circle, size: 10,),
                        SizedBox(width: 5.0),
                        Text('How to borrow book/s?', style: TextStyle(fontFamily: 'Roboto', fontSize: 17, fontWeight: FontWeight.bold),),
                      ],),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 5, 10, 10),
                        child: Column(
                          children: [
                            Text('Go to the Resources Tab of LRC Online, open the LEARNING RESOURCE CENTRE, and choose a category.', style: TextStyle(fontWeight: FontWeight.w800)),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('Search for the book/s you  wish to borrow, and check if it is Available. Get the Accession No. and Title of the Book/s.'),
                            ),
                            Text('Fill out the Borrow Book/s form which is provided in the Transaction Tab of LRC Online.', style: TextStyle(fontWeight: FontWeight.w800)),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('If the book is available for borrowing, the librarian will inform the student through MS Outlook on how the book/s can be claimed.'),
                            ),
                          ],
                        )
                      ),
                      Row(children: [
                        Icon(Icons.circle, size: 10,),
                        SizedBox(width: 5.0),
                        Text('How many books can a student borrow?', style: TextStyle(fontFamily: 'Roboto', fontSize: 17, fontWeight: FontWeight.bold),),
                      ],),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 5, 10, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('Student can borrow a maximum of three books, and the book can only last a maximum of two weeks only. The students can renew the book/s if it is not reserved.'),
                            ),
                          ],
                        )
                      ),
                      Row(children: [
                        Icon(Icons.circle, size: 10,),
                        SizedBox(width: 5.0),
                        Text('How can a student renew the book/s?', style: TextStyle(fontFamily: 'Roboto', fontSize: 17, fontWeight: FontWeight.bold),),
                      ],),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 5, 10, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('Student can renew the book/s, if it is not reserved, by informing the librarian through MS Outlook. Renewal must be done before or on the due date.'),
                            ),
                          ],
                        )
                      ),
                      Row(children: [
                        Icon(Icons.circle, size: 10,),
                        SizedBox(width: 5.0),
                        Text('How can a student reserve book/s \nthatare currently borrowed by other\nstudents?', style: TextStyle(fontFamily: 'Roboto', fontSize: 17, fontWeight: FontWeight.bold),),
                      ],),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 5, 10, 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text('If the status of the book/s is student can reserve the book/s instead. To reserve, just fill out the same form for borrowing book/s in the Transaction Tab of LRC Online.\n\nThe librarian will inform the student through MS Outlook if book/s reserved by the student is/are available again, and can be claimed already.'),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                )
                ]),
            ),
          ),
        ]),
      ),
    );
  }
}
