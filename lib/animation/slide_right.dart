import 'package:flutter/material.dart';
class SlideRight extends PageRouteBuilder {
  final Widget page;

  SlideRight({required this.page})
      : super(
    pageBuilder: (context, animation, animationtwo) => page,
    transitionsBuilder: (context, animation, animationtwo, child) {

      return Align(alignment: Alignment.center,
          child: FadeTransition(opacity: animation,child: child,));
    },
  );
}