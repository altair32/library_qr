import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier{
  String? hostel;
  String? ra;
  String? year;
  UserModel({this.hostel,this.ra,this.year}){
    notifyListeners();
  }
}