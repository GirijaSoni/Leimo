import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  final double top,bottom,left,right;
  final String str;

  MyWidget({

    @required this.animation3,
    @required this.top,
    @required this.left,
    @required this.right,
    @required this.bottom,
    @required this.str,
  });
  final Animation<double> animation3;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right:right,
      bottom:bottom,
      child: Container(
        //  duration: Duration(seconds: 40),
          height:275,width:275,child: ScaleTransition(
          scale:animation3 ,

          child: Image.asset(str,scale: 0.2,))),
    );
  }
}