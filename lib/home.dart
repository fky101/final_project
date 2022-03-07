import 'package:flutter/material.dart';
import 'results.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  var _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI Calculator',
          style: TextStyle(
            fontSize: 44.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontFamily: 'FuzzyBubbles',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 70.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            TextField(
              controller: _height,
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Your height in m',
              ),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.normal,
                fontFamily: 'FuzzyBubbles',
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _weight,
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Your weight in kg',
              ),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.normal,
                fontFamily: 'FuzzyBubbles',
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  calculate();
                });
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage(bmi: _result)));
              },
              child: Expanded(
                child: Container(
                  child: const Text(
                    'Calculate BMI',
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
      ),
    );
  }
  void calculate() {
    double height = double.parse(_height.text);
    double weight = double.parse(_weight.text);
    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}