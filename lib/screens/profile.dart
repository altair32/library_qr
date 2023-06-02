import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_qr/model/userModel.dart';
import 'package:library_qr/screens/EditProfile.dart';
import 'package:library_qr/services/userService.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  late final Stream<UserModel?> userModelStream;
  final _user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<UserModel?>(
        stream: UserService().getUserInfo(_user.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              UserModel user = snapshot.data!;
              return Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(_user.photoURL!),
                  ),
                  const SizedBox(height: 10,),
                  Text('${user.hostel}'),
                  Text('${user.ra}'),
                  Text('${user.year}'),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile())),
                    child: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                  ),
                ],
              );
            }
          }
          return loadingView();
        },
      ),
    );
  }

  Widget loadingView() => Center(
    child: CircularProgressIndicator(),
  );
}
