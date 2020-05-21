import 'dart:math';

import 'package:flutter/material.dart';

class AnimationApp extends StatefulWidget {
  @override
  _AnimationAppState createState() => _AnimationAppState();
}


class _AnimationAppState extends State<AnimationApp> {
  bool reverse=false;
  Alignment align = Alignment.bottomLeft;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        alignment: align,
        child: Container(
          height: 40,
          child: reverse?Icon(Icons.flight_land, size: 100, color: Colors.green):Icon(Icons.airplanemode_active, size: 50, color: Colors.blue),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              
              if (align==Alignment.center){
                align=Alignment.topCenter;
              }else if(align==Alignment.bottomLeft) {
                align=Alignment.center;
              }else if (align==Alignment.topCenter){
                reverse=true;
                align=Alignment.bottomRight;
              }
            });
          },
          label: Text('Fly')),
    );
  }
}
