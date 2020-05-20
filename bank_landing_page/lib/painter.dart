import 'package:flutter/material.dart';
import 'dart:math';
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
      final offset = Offset(size.width * .05, size.height * .05);
      paint.color = Color(0xFF17B368);
      return canvas.drawCircle(offset, size.width * .45, paint);
    }
    blackCircle() {
      final rect = Rect.fromCenter(
          center: Offset(size.width*.9, size.height * .54),
          width: size.width * .5,
          height: size.height * .35);
      final startAngle =0.0;
      final sweepingAngle = 90.0;
      final useCenter = true;
      paint.color = Colors.black;
        return canvas.drawArc(rect, startAngle, sweepingAngle, useCenter, paint);
    }


    yellowCircle();
    greenCircle();
    blackCircle();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
