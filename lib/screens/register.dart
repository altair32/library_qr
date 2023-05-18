import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_qr/widgets/authentication.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Register"),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: () async{
              final provider = Provider.of<GoogleSignInProvider>(context,listen : false);
              provider.googleLogin();
              if(provider.user != null){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              }
            }, child: Text("Sign In")),
          )
        ],
      ),
    );
  }
}
