// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:library_qr/screens/register.dart';
import 'qr_generate.dart';
import 'qr_scan.dart';
import 'defaulter_screen.dart';

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
      body: Container(child: Column(
            children: [SizedBox(height: 100,),
              ElevatedButton(onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> GenerateScreen())), child: Text('QR Generate'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),),
              ElevatedButton(onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> ScanQR())), child: Text('QR Scan'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),),
              ElevatedButton(onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> defaulter())), child: Text('Debug'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),)
            ],
          )),
        );
  }
}
