import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grameen_neeti/signup.dart';
import 'package:grameen_neeti/startPage.dart';
import '../../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => startPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Container(
        decoration: BoxDecoration(color: Colors.white),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 11,
            child: Container(
                width: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.redAccent,
                ),
                child: Image(
                  image: AssetImage("assets/logo.jpeg"),
                  width: 130,
                )),
          ),
          Expanded(
            flex: 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("By ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500)),
                  Text("Sachin Kumar",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF0500FA),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700))
                ]),
          )
        ],
      )
    ]));
  }
}
