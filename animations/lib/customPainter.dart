import 'package:flutter/material.dart';

class CustomPainting extends StatefulWidget {
  @override
  _CustomPaintingState createState() => _CustomPaintingState();
}

class _CustomPaintingState extends State<CustomPainting>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  double drawTime = 0.0;
  double drawDuration = 2.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: drawDuration.toInt(),
      ),
    );

    animation = Tween<double>(begin: 0.01, end: drawDuration).animate(
      controller
        ..addListener(() {
          setState(() {
            drawTime = animation.value;
          });
        }),
    );
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: CustomPaint(
          painter: BobRoss(drawTime: drawTime, drawDuration: drawDuration),
        ),
      ),
    );
  }
}

class BobRoss extends CustomPainter {
  final drawTime;
  final drawDuration;
  BobRoss({this.drawTime, this.drawDuration});
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromLTWH(0.0, 10.0, 50, size.height * Curves.easeIn.transformInternal(drawTime / drawDuration)),
        Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.red);
  }

  @override
  bool shouldRepaint(BobRoss oldDelegate) => true;
}
