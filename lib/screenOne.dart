import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Icon_content.dart';
import 'Reusabale_Card.dart';
import 'RoundIconButton.dart';
import 'buttom.dart';
import 'constent.dart';

enum TypeGender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = KinactiveColorCard;
  Color femaleCardColor = KinactiveColorCard;
  int height = 100;
  int weight = 80;
  int age = 80;

  TypeGender SelectGender;

//  //with in enum
//  void UpdateColor(TypeGender gender) {
//    //male card pressed
//
//    if (gender == TypeGender.male) {
//      if (maleCardColor == inactiveColorCard) {
//        maleCardColor = activeColorCard;
//        femaleCardColor = inactiveColorCard;
//      } else {
//        maleCardColor = inactiveColorCard;
//      }
//    } else {
//      if (gender == TypeGender.female) {
//        if (femaleCardColor == inactiveColorCard) {
//          femaleCardColor = activeColorCard;
//          maleCardColor = inactiveColorCard;
//        } else {
//          femaleCardColor = inactiveColorCard;
//        }
//      }
//    }
//  }

  //1=male 2=female   // with out enum
//  void UpdateColor(int gender) {
//    //male card pressed
//    if (gender == 1) {
//      if (maleCardColor == inactiveColorCard) {
//        maleCardColor = activeColorCard;
//        femaleCardColor = inactiveColorCard;
//      } else {
//        maleCardColor = inactiveColorCard;
//      }
//    } else {
//      if (gender == 2) {
//        if (femaleCardColor == inactiveColorCard) {
//          femaleCardColor = activeColorCard;
//          maleCardColor = inactiveColorCard;
//        } else {
//          femaleCardColor = inactiveColorCard;
//        }
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusabaleCard(
                    ontapes: () {
                      setState(() {
                        SelectGender = TypeGender.female;
                        // UpdateColor(TypeGender.female);//with in enum
                        // UpdateColor(2); with out enum
                      });
                    },
                    color:
                        //maleCardColor
                        SelectGender == TypeGender.female
                            ? KactiveColorCard
                            : KinactiveColorCard,
                    cardChild: IcontContent(
                      nameText: 'male',
                      customIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusabaleCard(
                    ontapes: () {
                      setState(() {
                        SelectGender = TypeGender.male;
                        // UpdateColor(TypeGender.female);//with in enum
                        // UpdateColor(2); with out enum
                      });
                    },
                    color:
                        //femaleCardColor,
                        (SelectGender == TypeGender.male)
                            ? KactiveColorCard
                            : KinactiveColorCard,
                    cardChild: IcontContent(
                      nameText: 'female',
                      customIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusabaleCard(
                color: KactiveColorCard,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Height',
                      style: KlabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: KNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: KlabelTextStyle,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              overlayColor: Color(0x3feb1555),
                              inactiveTrackColor: Colors.white70,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                              thumbColor: Colors.red),
                          child: Slider(
                              value: height.toDouble(),
                              // inactiveColor: Colors.blueGrey,
                              min: 100.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                print(newValue);
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusabaleCard(
                    color: KactiveColorCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'karrar',
                          style: KlabelTextStyle,
                        ),
                        Text(weight.toString(), style: KNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: Icons.add,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusabaleCard(
                    color: KactiveColorCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'saad',
                          style: KlabelTextStyle,
                        ),
                        Text(age.toString(), style: KNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: Icons.add,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ButtomEne(
            onTap: () {
              CalculatorBrain cale =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultsPage(
                  bmiResult: cale.CalculateBMI(),
                  resultText: cale.getResult(),
                  interpretation: cale.interpretation(),
                );
              }));
            },
            buttomTitle: 'Calculate',
          ),
        ],
      ),
    );
  }
}
