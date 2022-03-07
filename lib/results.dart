import 'package:flutter/material.dart';
import 'home.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi});
  var bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Your BMI is',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'FuzzyBubbles',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                bmi == null ? "" : "${bmi.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'FuzzyBubbles',
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Compare your results here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'FuzzyBubbles',
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            'images/bmi.png',
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));
            },
            child: Expanded(
              child: Container(
                child: const Text(
                  'Back to the Home Page',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'FuzzyBubbles',
                  ),
                ),
                color: Colors.blue,
                height: 50.0,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
