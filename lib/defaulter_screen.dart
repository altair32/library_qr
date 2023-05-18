import 'package:flutter/material.dart';

class defaulter extends StatefulWidget {
  const defaulter({Key? key}) : super(key: key);

  @override
  State<defaulter> createState() => _defaulterState();
}

class _defaulterState extends State<defaulter> {
  @override
  String? name;
  String? regno;
  String? hostel;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Text('Defualters List'))
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            width: 850,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(name="Isha",style: TextStyle(color: Colors.black),),
                        Text(regno="RA2011003010317",style: TextStyle(color: Colors.black),),
                        Text(hostel="Kopperundevi",style: TextStyle(color: Colors.black),)],
                  ),

                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
