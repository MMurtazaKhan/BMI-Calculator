import 'package:bmi/CalculatorBrain.dart';
import 'package:bmi/calculate.dart';
import 'package:bmi/floatingButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BottomButton.dart';
import 'Reuable_Card.dart';
import 'constants.dart';
import 'iconContent.dart';

enum Gender {
  male,
  female,
}
int height = 180;
int weight = 60;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("BMI Calculator"))),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onpress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activatedColor
                      : InactiveColor,
                  CardChild:
                      icon_content(icon: FontAwesomeIcons.mars, label: "Male"),
                )),
                Expanded(
                    child: ReusableCard(
                  onpress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  CardChild: icon_content(
                    icon: FontAwesomeIcons.venus,
                    label: "Female",
                  ),
                  colour: selectedGender == Gender.female
                      ? activatedColor
                      : InactiveColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            CardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: LabelTextStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: NumberTextStyle,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("cm"),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.white38,
                      thumbColor: Color(0xffd42f52),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15, disabledThumbRadius: 7),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25)),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
            colour: activatedColor,
          )),
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: ReusableCard(
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight", style: LabelTextStyle),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weight.toString(),
                            style: NumberTextStyle,
                          ),
                          SizedBox(
                            width: 7.0,
                          ),
                          Text("kg"),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          fLoatingButton(
                            icon: FontAwesomeIcons.plus,
                            OnPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          fLoatingButton(
                            icon: FontAwesomeIcons.minus,
                            OnPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  colour: activatedColor,
                )),
                Expanded(
                    child: ReusableCard(
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age", style: LabelTextStyle),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            age.toString(),
                            style: NumberTextStyle,
                          ),
                          SizedBox(
                            width: 7.0,
                          ),
                          Text("years"),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          fLoatingButton(
                            icon: FontAwesomeIcons.plus,
                            OnPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          fLoatingButton(
                            icon: FontAwesomeIcons.minus,
                            OnPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  colour: activatedColor,
                )),
              ],
            ),
          ),
          BottomButton(title: 'Calculate',OnTap: (){
            calculatorBrain calc = calculatorBrain(height, weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculate(
              bmiResult: calc.bmiCalculator(),
              result: calc.getResult(),
              interpretation: calc.getInterpretation(),
            )));
          },)
        ],
      ),
     
    );
  }
}
