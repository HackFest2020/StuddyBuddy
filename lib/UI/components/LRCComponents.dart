import 'package:flutter/material.dart';
import 'package:study_buddy/UI/components/LaunchUrl.dart';

class LRCComponents {
  Widget lrcCard = SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        GestureDetector(
          onTap: () => LaunchUrl().borrowURL(),
          child: Card(
            margin: EdgeInsets.all(5),
            color: Colors.blue[800],
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    "Borrow Book/s",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => LaunchUrl().returnURL(),
          child: Card(
            margin: EdgeInsets.all(5),
            color: Colors.blue[800],
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Icon(
                      Icons.book,
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    "Return Book/s",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => LaunchUrl().applyCardURL(),
          child: Card(
            margin: EdgeInsets.all(5),
            color: Colors.blue[800],
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Icon(
                      Icons.credit_card,
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    "Library Card",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );

  Widget lrcContactUs = Container(
    width: double.infinity,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'LEARNING RESOURCE CENTER',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 5),
        Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.yellow,
            size: 40,
          ),
          Text(
              'Km 53 Pan Philippine Highway,\nBrgy. Milagrosa, Calamba, Laguna')
        ]),
        SizedBox(height: 5),
        Row(children: [
          Icon(
            Icons.phone_outlined,
            color: Colors.yellow,
            size: 40,
          ),
          Text(
              'Telephone number of NU: (049) 572 3356\nLocal number of NU LRC: 3136')
        ]),
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 10),
        Text(
          'LIBRARY STAFF CONTACT DETAILS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          child: Column(children: [
            Column(children: [
              CircleAvatar(
                backgroundImage: AssetImage('./assets/img/annabeth.png'),
                backgroundColor: Colors.yellow,
                radius: 40,
              ),
              SizedBox(height: 16),
              Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Annabeth Adag'),
              SizedBox(height: 8),
              Text(
                'Microsoft Teams Chat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('aeadag@nu-laguna.edu.ph'),
              SizedBox(height: 8),
              Text(
                'Contact Number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('09266482738'),
            ]),
            SizedBox(height: 10),
            CircleAvatar(
              backgroundImage: AssetImage('./assets/img/trixie.png'),
              backgroundColor: Colors.yellow,
              radius: 40,
            ),
            SizedBox(height: 16),
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Maria Trixie Ann Garcia'),
            SizedBox(height: 8),
            Text(
              'Microsoft Teams Chat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('mtatgarcia@nu-laguna.edu.ph'),
            SizedBox(height: 8),
            Text(
              'Contact Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('09068533703'),
          ]),
        )
      ],
    ),
  );
}
