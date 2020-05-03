import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moyawim2/Login_SignUp_Pages/AppIntro.dart';
import 'package:moyawim2/Login_SignUp_Pages/LoginSignUp.dart';
import 'package:moyawim2/Login_SignUp_Pages/Tabs.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(seen());

class seen extends StatefulWidget {
  @override
  seenState createState() => seenState();
}

class seenState extends State<seen> {
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
    return seen ? firstPage() : AppIntro();
  }
}
