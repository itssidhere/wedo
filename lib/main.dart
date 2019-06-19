import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:wedo/ui/home_page_animator.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("WeDo"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.red]);
          ),
        ),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  WelcomeScreenAnimator welcomeScreenAnimator;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    welcomeScreenAnimator = new WelcomeScreenAnimator(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    controller.forward();
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/welcome.jpg"),fit: BoxFit.cover)
      ),

      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 100.0),
            child: Center(
              child: Container(
                height: 60,
                width: 300,
                child: RaisedButton.icon(
                  icon: Image.asset("assets/glogo.png"),
                  onPressed: () => debugPrint("SignGoogle"),
                  color: Colors.white,
                  label: Text("Sign in with Google"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 60,
                width: 300,
                child: RaisedButton.icon(
                  icon: Image.asset("assets/fb-logo.png"),
                  onPressed: () => debugPrint("SignGoogle"),
                  color: Colors.blue[800],
                  label: Text("Sign in with Facebook",
                    style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}