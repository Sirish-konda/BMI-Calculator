import 'package:flutter/material.dart';
import '../constants.dart';

class genderWidget extends StatelessWidget {
  genderWidget({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFFC8C7D1),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: klabelTextStyle),
      ],
    );
  }
}
