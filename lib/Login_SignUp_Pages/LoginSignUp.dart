import 'package:flutter/material.dart';
import 'package:moyawim2/Login_SignUp_Pages/Login_Page.dart';
import 'package:moyawim2/Login_SignUp_Pages/Tabs.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 250,
              width: 270,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/Logo-Moyawem.jpeg",
                      ))),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text("تسجيل الدخول",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.blueAccent),
                )),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 53),
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tabs(),
                  ),
                );
              },
//                Navigator.of(context).push(createRoute1(Tabs()));

              child: Text("إنشاء حساب",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Route createRoute1(Widget next) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => next,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
