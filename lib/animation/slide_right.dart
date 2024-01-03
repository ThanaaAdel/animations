import 'package:flutter/material.dart';
class SlideRight extends PageRouteBuilder {
  final Widget page;

  SlideRight({required this.page})
      : super(
    pageBuilder: (context, animation, animationtwo) => page,
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin = const Offset(0.0, 1.0);
      var end = const Offset(0.0, 0.0);
      var tween = Tween(begin: begin, end: end);
      var curveAnimations = CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
      return SlideTransition(position: tween.animate(curveAnimations), child: child);
    },
  );
}