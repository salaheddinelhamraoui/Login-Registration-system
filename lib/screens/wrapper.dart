import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/models/user.dart';
import 'package:signin/screens/authenticate/authenticate.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
//    print('Hello from wrapper : ' + user.uid);
    //return home or authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
