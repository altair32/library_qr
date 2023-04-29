// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:library_qr/screens/register.dart';
import 'qr_generate.dart';
import 'qr_scan.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(child: Column(
          children: [
            Register(),
            ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> GenerateScreen())), child: Text('QR Generate'),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),)
          ],
        )),
      ),
    );
  }
}
