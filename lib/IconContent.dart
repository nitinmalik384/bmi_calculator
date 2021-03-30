import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;
  IconContent({this.iconData, @required this.title});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment:MainAxisAlignment.center
      ,children: [
      Icon(iconData,
        size: 80.0,),
      SizedBox(height:15.0),
      Text(title,style:TextStyle(color:Color(0xff8d8e98),
          fontSize: 18.0))
    ],);
  }
}
