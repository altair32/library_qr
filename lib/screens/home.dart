import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../defaulter_screen.dart';
import '../qr_generate.dart';
import '../qr_scan.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [SizedBox(height: 100,),
          ElevatedButton(onPressed: ()=>Navigator.push(context,
              MaterialPageRoute(builder: (context)=> GenerateScreen())), child: Text('QR Generate'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),),
          ElevatedButton(onPressed: ()=>Navigator.push(context,
              MaterialPageRoute(builder: (context)=> ScanQR())), child: Text('QR Scan'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),),
          ElevatedButton(onPressed: ()=>Navigator.push(context,
              MaterialPageRoute(builder: (context)=> defaulter())), child: Text('Debug'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),),
        ],
      ),
    );
  }
}
