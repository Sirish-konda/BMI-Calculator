import 'package:flutter/material.dart';
import 'package:project/reusableCard_content.dart';
import '../constants.dart';
import 'input_page.dart';
import '../Components/buttom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.BMIInterpretaion,
      required this.BMIresult,
      required this.BMItext});
  final String BMIresult;
  final String BMItext;
  final String BMIInterpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF6C6F7D),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BMItext.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    BMIresult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    BMIInterpretaion,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
