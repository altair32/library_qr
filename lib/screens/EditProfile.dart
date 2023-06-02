import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/userService.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final user = FirebaseAuth.instance.currentUser!;
  final UserService _userService = UserService();


  late String ra = user.displayName!;
  String hostel = "";
  String year = "";

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: () async {
                await _userService.updateProfile(hostel,ra,year);
                Navigator.pop(context);
                setState(() {});
              },
              child: const Text("SAVE"))
        ],
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              onChanged: (val) => setState(() {
                hostel = val;
              }),
              keyboardType: TextInputType.name,
            ),
            TextFormField(
              onChanged: (val) => setState(() {
                year = val;
              }),
              keyboardType: TextInputType.name,
            ),
          ],
        ),
      ),
    );
  }
}
