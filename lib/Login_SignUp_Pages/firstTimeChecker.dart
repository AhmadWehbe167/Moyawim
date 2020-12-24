import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moyawim2/Login_SignUp_Pages/AppIntro.dart';
import 'package:moyawim2/Login_SignUp_Pages/LoginSignUp.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(Seen());

class Seen extends StatefulWidget {
  @override
  SeenState createState() => SeenState();
}

class SeenState extends State<Seen> {
  bool loading = true;
  bool seen = false;

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seen = (prefs.getBool('seen') ?? false);
    if (!seen) {
      await prefs.setBool('seen', true);
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 200), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return seen ? FirstPage() : AppIntro();
  }
}
