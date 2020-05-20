import 'package:bank_landing_page/painter.dart';
import 'package:flutter/material.dart';
import 'circleAV.dart';
import 'rowExpanded.dart';

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
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  size: 26,
                ),
                title: Text('Finances')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 26,
                ),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border, size: 26),
                title: Text('Book')),
          ]),
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
              padding: const EdgeInsets.fromLTRB(0, 60, 40, 20),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.reorder, size: 40)),
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
                      Text('HollyWood Actress',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: height * .1,
              width: width * .8,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RowExpanded(
                    amount: '\$250,000',
                    headerOne: 'Instant',
                    headerTwo: 'Cash available',
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: height * .18,
              width: width * .8,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RowExpanded(
                          amount: '\$17,000',
                          headerOne: 'Savings',
                          headerTwo: 'Smart saving is on'),
                      SizedBox(height: 12),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 7),
                          CircleAV(
                            icon: Icons.card_giftcard,
                            iconColor: Colors.black,
                            bgColor: Colors.green,
                            foreGroundColor: Colors.white,
                          ),
                          CircleAV(
                            icon: Icons.movie_filter,
                            iconColor: Colors.black,
                            bgColor: Colors.green,
                            foreGroundColor: Colors.white,
                          ),
                          CircleAV(
                            icon: Icons.flight_takeoff,
                            iconColor: Colors.black,
                            bgColor: Colors.green,
                            foreGroundColor: Colors.white,
                          ),
                          CircleAV(
                            icon: Icons.photo_library,
                            iconColor: Colors.black,
                            bgColor: Colors.green,
                            foreGroundColor: Colors.white,
                          ),
                          CircleAV(
                            icon: Icons.add,
                            iconColor: Colors.black,
                            bgColor: Colors.white,
                            foreGroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height * .18,
              width: width * .8,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RowExpanded(
                      headerOne: 'Investment',
                      headerTwo: 'Auto-investing is on',
                      amount: '          ',
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 12),
                        CircleAV(
                            foreGroundColor: Colors.black,
                            bgColor: Colors.black,
                            iconColor: Colors.white,
                            icon: Icons.insert_chart),
                        CircleAV(
                            foreGroundColor: Colors.black,
                            bgColor: Colors.black,
                            iconColor: Colors.white,
                            icon: Icons.flash_on),
                        CircleAV(
                            foreGroundColor: Colors.black,
                            bgColor: Colors.black,
                            iconColor: Colors.white,
                            icon: Icons.grid_on),
                        CircleAV(
                            foreGroundColor: Colors.white,
                            bgColor: Colors.white,
                            iconColor: Colors.black,
                            icon: Icons.add),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
