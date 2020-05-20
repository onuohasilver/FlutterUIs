import 'package:flutter/material.dart';
class RowExpanded extends StatelessWidget {
  const RowExpanded({Key key,  this.amount,@required this.headerOne,@required this.headerTwo})
      : super(key: key);
  final amount;
  final headerOne;
  final headerTwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$headerOne',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            Text('$headerTwo',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey))
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text('$amount',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        )
      ],
    );
  }
}
