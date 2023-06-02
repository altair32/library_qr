import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService{
  UserModel? userFromFirebaseSnapshot(DocumentSnapshot<dynamic> snapshot){
    return snapshot != null
        ?UserModel(
      hostel: snapshot.data()['hostel'],
      ra: snapshot.data()['ra'],
      year: snapshot.data()['year']
    ) :UserModel();
  }

  Stream<UserModel?> getUserInfo(uid){
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .snapshots()
        .map(userFromFirebaseSnapshot);
  }

  Future <void> updateProfile (String hostel,String ra,String year) async {


    Map<String,Object> data = HashMap();
    if (hostel != '') data['hostel'] = hostel;
    if (ra != '') data['ra'] = getRA(ra);
    if (year != '') data['year'] = year;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .update(data);
  }

  getRA(String name) {
    const start = "R";
    const end = ")";
    final startIndex = name.indexOf(start);
    final endIndex = name.indexOf(end, startIndex + start.length);
    print(name.substring(startIndex + start.length, endIndex));
    return name.substring(startIndex + start.length, endIndex);
  }
}