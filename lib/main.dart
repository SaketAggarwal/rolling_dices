import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                fontSize: 35.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left = 5;
  var right = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("Left Button is Pressed");
                  setState(
                    () {
                      //   left = 5;
                      // right = 2;
                      left = Random().nextInt(6) + 1;
                      right = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image.asset('images/dice$left.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("Right Button is Pressed");
                  setState(() {
                    //left = 1;
                    //right = 1;
                    left = Random().nextInt(6) + 1;
                    right = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$right.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
            onPressed: () {
              setState(() {
                left = Random().nextInt(6) + 1;
                right = Random().nextInt(6) + 1;
              });
            },
            child: Text(
              "Press This to Roll",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "Either Tap on the dices",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
