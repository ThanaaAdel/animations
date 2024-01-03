import 'package:animations/screens/page1.dart';
import 'package:flutter/material.dart';

import '../animation/slide_right.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: Colors.brown,
      body: Center(child: Container(
          width: 120,
          height: 50,
          child: ElevatedButton(onPressed: (){

            Navigator.of(context).push(SlideRight(page: Page1()));
          }, child: Center(child: Text("Go To Page1"))))),
    ));
  }
}
