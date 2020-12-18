import 'package:flutter/material.dart';
import 'dart:math';

import './RadioButtons.dart';
import './Data.dart';
import 'Data.dart';

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
                padding: EdgeInsets.all(70),
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.network(
                                'https://flutter.su/data/4e405c78a41d983fe87757c0c7e3885b.jpg')
                            .image,
                        fit: BoxFit.cover),
                    // shape: BoxShape.circle,
                    boxShadow: [
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
              //TODO заменить на radiobuttons и добавить кнопку ответить (сюда передавать параметры 3 ответа и url флага)
              child: RadioButtons(currentGuessList: currentGuessList),
            ),
            Container(
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("ответить"),
                onPressed: checkAnswer(),
              ),
            ),
          ]),
    );
  }

  checkAnswer() {}

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
