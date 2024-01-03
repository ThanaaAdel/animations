import 'package:flutter/material.dart';
class SlideRight extends PageRouteBuilder {
  final Widget page;

  SlideRight({required this.page})
      : super(
    pageBuilder: (context, animation, animationtwo) => page,
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin = const Offset(-1.0, 1.0);
      var end = const Offset(0.0, 0.0);
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}