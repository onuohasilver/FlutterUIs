import 'dart:math';

import 'package:bank_landing_page/painter.dart';
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
      body: Stack(children: [
        CustomPaint(
          painter: MyShapePainter(),
          child: Container(
            height: height,
            width: width,
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 40, 40),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.settings, size: 40)),
            ),
            SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: Row(
                children: <Widget>[
                  Material(
                    elevation: 20,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/myPhoto.jpg'),
                      radius: 60,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Tracee E.',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                      Text('Top Actress',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: height * .12,
              width: width * .8,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Instant',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600)),
                          Text('Cash available',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey))
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('\$246,000',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: height * .2,
              width: width * .8,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Savings',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600)),
                              Text('Smart Saving is on',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey))
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('\$16,000',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      SizedBox(height:12),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 7),
                          CircleAV(
                            icon: Icons.card_giftcard,
                          ),
                          CircleAV(icon: Icons.movie_filter),
                          CircleAV(icon: Icons.flight_takeoff),
                          CircleAV(icon: Icons.photo_library),
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.add, color: Colors.black))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class CircleAV extends StatelessWidget {
  const CircleAV({Key key, this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape: CircleBorder(),
        elevation: 10,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.black,
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
