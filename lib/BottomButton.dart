import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  
  final String title;
  final Function OnTap;

  const BottomButton({ this.title, this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        color: BottomColor,
        width: double.infinity,
        height: 70.0,
        child:Center(child: Text(title,style: TextStyle(
          fontSize: 22,fontWeight: FontWeight.bold
        ),),),
      ),
    );
  }
}
