import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF42404F)),
        primaryColor: Color(0xFF6C6F7D),
        scaffoldBackgroundColor: Color(0xFF42404F),
      ),
      home: InputPage(),
    );
  }
}

//
