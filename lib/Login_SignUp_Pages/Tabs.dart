import 'package:flutter/material.dart';

import 'SignUp-Employee.dart';
import 'SignUp-employer.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
//          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: ()=>Navigator.of(context).pop()),
          centerTitle: true,
          title: Text(
            'أنشئ حساب',
            style: TextStyle(fontSize: 26),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "مياوم",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Tab(
                  child: Text(
                    "رب عمل",
                    style: TextStyle(fontSize: 25),
                  )),
            ],
          ),
        ),
        body: TabBarView(
          children: [SignUpEmployee(), SignUpEmployer()],
        ),
      ),
    );
  }
}
