import 'package:flutter/material.dart';

class CircleAV extends StatelessWidget {
  const CircleAV(
      {Key key,
      @required this.icon,
      @required this.bgColor,
      @required this.foreGroundColor,
      @required this.iconColor})
      : super(key: key);
  final IconData icon;
  final Color bgColor;
  final Color foreGroundColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape: CircleBorder(),
        elevation: 10,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: bgColor,
          child: CircleAvatar(
              radius: 20,
              backgroundColor: foreGroundColor,
              child: Icon(
                icon,
                color: iconColor,
              )),
        ),
      ),
    );
  }
}
