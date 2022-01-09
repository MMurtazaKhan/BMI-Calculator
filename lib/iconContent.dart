import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class icon_content extends StatelessWidget {
 
  icon_content( {@required this.icon, this.label});
 
  final IconData icon;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon , size: 80.0),
        SizedBox(height: 15.0),
        Text(label,
            style: LabelTextStyle)
      ],
    );
  }
}


