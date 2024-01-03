import 'package:animations/screens/page2.dart';
import 'package:flutter/material.dart';

import '../animation/slide_right.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: Colors.red,
    body: Center(child: Container(
      height: 60,
      width: 120,
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).push(SlideRight(page: Page2()));
      }, child: Center(child: Text("Go To Page2"))),
    )),
    ));
  }
}
