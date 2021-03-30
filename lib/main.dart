import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          accentColor: Color(0xffFF0066),
          primaryColor: Color(0xff0C1134),
          scaffoldBackgroundColor: Color(0xff0C1134),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}