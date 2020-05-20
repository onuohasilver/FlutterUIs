import 'dart:math';

import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomPaint(
          painter: MyShapePainter(),
          child: Container(
            height: height,
            width: width,
          ),
        ));
  }
}

class MyShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    yellowCircle() {
      final rect = Rect.fromCenter(
          center: Offset(0, size.height * .4),
          width: size.width * .5,
          height: size.height * .35);
      final startAngle = -pi / 2;
      final sweepingAngle = pi;
      final useCenter = true;

      paint.color = Color(0xFFFFD80F);
      return canvas.drawArc(rect, startAngle, sweepingAngle, useCenter, paint);
    }
    
    greenCircle() {
      final offset=Offset(size.width*.05,size.height*.05);

      paint.color = Color(0xFF17B368);
      return canvas.drawCircle(offset,size.width*.45,paint);
    }
    yellowCircle();
    greenCircle();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
