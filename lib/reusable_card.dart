import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Widget child;
  final Color color;
  ReusableCard({this.child, @required this.color});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(color: color,
      borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10.0),
      child:child

    );
  }
}
