import 'package:bmi_calculator/Reusabale_Card.dart';
import 'package:flutter/material.dart';

import 'buttom.dart';
import 'constent.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String interpretation;
  final String resultText;

  ResultsPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomLeft,
              child: Text(
                'klk',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusabaleCard(
                color: KactiveColorCard,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyStyle,
                    ),
                  ],
                ),
              )),
          ButtomEne(
            onTap: () {
              Navigator.pop(context);
            },
            buttomTitle: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
