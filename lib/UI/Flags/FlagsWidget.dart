import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

import 'RadioButtons.dart';
import '../../Model/Data.dart';

class FlagsWidget extends StatefulWidget {
  final TextStyle optionStyle;

  FlagsWidget({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  @override
  _FlagsWidgetState createState() => _FlagsWidgetState();
}

class _FlagsWidgetState extends State<FlagsWidget> {
  static const numberOfAnswers = 3;
  var currentGuessList = List<Entry>(numberOfAnswers);
  var rightAnswer;
  var answer;
  var check;

  @override
  void initState() {
    super.initState();
    generateNewGuessList();
    generateRightAnswer();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 300,
                height: 200,
                child:
                    SvgPicture.network(currentGuessList[rightAnswer].flagURL),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0,
                    spreadRadius: 5.0,
                    offset: Offset(5, 8),
                  )
                ] //boxShadow
                    ) //BoxDecoration
                ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Index 0: Flags',
                style: widget.optionStyle,
              ),
            ),
            Container(
              child: RadioButtons(
                  currentGuessList: currentGuessList,
                  answer: answer,
                  setAnswer: setAnswer),
            ),
            Container(
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("ответить"),
                onPressed: checkAnswer,
              ),
            ),
            Text(
              '$check',
              style: TextStyle(fontSize: 23),
            )
          ]),
    );
  }

  checkAnswer() {
    var val;
    var a = answer;
    var b = currentGuessList[rightAnswer].country;
    if (answer == currentGuessList[rightAnswer].country) {
      val = 'ПРАВИЛЬНО';
    } else {
      val = 'НЕ ПРАВИЛЬНО';
    }
    setState(() {
      check = val;
    });
  }

  setAnswer(String answer) {
    setState(() {
      this.answer = answer;
    });
  }

//TODO проверить - генерит повторяющиеся элементы
  generateNewGuessList() {
    // currentGuessList.clear();
    int i = 0;
    while (i < numberOfAnswers) {
      var next =
          Countries().countries[Random().nextInt(Countries().countries.length)];
      if (currentGuessList.contains(next)) continue;
      currentGuessList[i] = next;
      i++;
    }
  }

  generateRightAnswer() {
    rightAnswer = Random().nextInt((currentGuessList.length));
    // print("answer");
  }
}
