import 'package:flutter/material.dart';


class WelcomeScreenAnimator{

  WelcomeScreenAnimator(this.controller):bgColor= ColorTween(begin: Colors.black,end: Colors.blueGrey).animate(CurvedAnimation(parent: controller, curve: Curves.easeIn)),
  opacityHello = Tween(begin: 1.0,end: 0.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0,0.5 ,curve: Curves.fastOutSlowIn))),
  opacityIntro = Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0,0.5,curve: Curves.easeIn)));


  final AnimationController controller;
  final Animation<Color> bgColor ;
  final Animation<double> opacityHello;
  final Animation<double> opacityIntro;

}
