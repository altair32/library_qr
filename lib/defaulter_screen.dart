import 'package:flutter/material.dart';

class defaulter extends StatefulWidget {
  const defaulter({Key? key}) : super(key: key);

  @override
  State<defaulter> createState() => _defaulterState();
}

class _defaulterState extends State<defaulter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Text('Defaulter List'))
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            width: 350,
            height: 50,
            child: Card(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
