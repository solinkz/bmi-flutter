import 'package:flutter/material.dart';
import 'b_card.dart';
import 'constants.dart';
import 'buttom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your result',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: BCard(
                        colour: cardColorMain,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              resultText,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF21FFA2),
                              ),
                            ),
                            Text(
                              bmiResult,
                              style: kLargeText,
                            ),
                            Text(
                              interpretation,
                              style: textStyle,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ButtomButton(
                      title: 'RE-CALCULATE',
                      onTap: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            );
          }),
    );
  }
}
