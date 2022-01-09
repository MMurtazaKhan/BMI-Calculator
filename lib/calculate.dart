import 'package:bmi/BottomButton.dart';
import 'package:bmi/Reuable_Card.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {

final String bmiResult;
final String result;
final String interpretation;

  const Calculate({this.bmiResult, this.result, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("BMI Calculator"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text( 'Your Result',style: BigTextStyle,),
            ))),
          SizedBox(height: 20,),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: InactiveColor,
                borderRadius: BorderRadius.circular(12.0),
                
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              
              Text(bmiResult,style: LabelTextStyle,),
              Text(result,style: BigTextStyle,),
              Text(interpretation)],),
            
            ),
              
            ),
            Expanded(child: BottomButton(title: 'Re-Calculate',OnTap: (){Navigator.pop(context);}))
        ],
      )
    );
  }
}