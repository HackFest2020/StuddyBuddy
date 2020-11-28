import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class TutorModel extends ChangeNotifier {
  List tutorList;

  

}

class Tutor {
  String id;
  String bio;
  String department;
  String email;
  String gender;
  String name;
  String program;
  String sectionYr;
  String userName;
  String userType;

  Tutor(
      {this.id,
      this.bio,
      this.department,
      this.email,
      this.gender,
      this.name,
      this.program,
      this.sectionYr,
      this.userName,
      this.userType});

  factory Tutor.fromFireStore(DocumentSnapshot doc) {
    Map data = doc.data as Map;
    return Tutor(
      id: doc.id,
      bio: data['bio'] ?? '',
      department: data['department'] ?? '',
      email: data['email'] ?? '',
      gender: data['gender'] ?? '',
      name: data['name'] ?? '',
      program: data['program'] ?? '',
      sectionYr: data['sectionYr'] ?? '',
      userName: data['userName'] ?? '',
      userType: data['userType'] ?? '',
    );
  }
}
