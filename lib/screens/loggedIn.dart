// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:library_qr/widgets/authentication.dart';
import 'package:provider/provider.dart';

class LoggedIn extends StatefulWidget {
  const LoggedIn({Key? key}) : super(key: key);

  @override
  _LoggedInState createState() => _LoggedInState();
}

class _LoggedInState extends State<LoggedIn> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoggedIn'),
        centerTitle: true,
        actions: [
          TextButton.icon(
              onPressed: () {
                final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                provider.logOut();
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              label: Text('Log Out'))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile"),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          Text('Name : '+user.displayName!),
          Text('Name : '+user.email!),
        ],
      ),
    );
  }
}
