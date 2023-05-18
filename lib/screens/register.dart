import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_qr/widgets/authentication.dart';
import 'package:provider/provider.dart';

import 'wrapper.dart';

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
        title: const Center(
          child: Text("Register"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Wrapper()));
                      //provider.change();
                    },
                    child: const Text("Sign In")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
