import 'package:flutter/material.dart';
class SlideRight extends PageRouteBuilder {
  final Widget page;

  SlideRight({required this.page})
      : super(
    pageBuilder: (context, animation, animationtwo) => page,
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin = 0.0;
      var end = 1.0;
      var tween = Tween(begin: begin, end: end);
      var curveAnimations = CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
      return RotationTransition(turns: tween.animate(curveAnimations), child: child);
    },
  );
}