import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Data.dart';

class RadioButtons extends StatefulWidget {
  final List<Entry> currentGuessList;

  RadioButtons({Key key, @required this.currentGuessList}) : super(key: key);

  @override
  RadioButtonsState createState() => RadioButtonsState();
}

class RadioButtonsState extends State<RadioButtons> {
  String radioItem = '';

  //TODO  вынести виджеты к отдельны класс и передавать им названия радиобаттомов, и функцию обновления выбранного значения в FlagsWdget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
          groupValue: radioItem,
          title: Text(widget.currentGuessList[0].country),
          value: widget.currentGuessList[0].country,
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
          groupValue: radioItem,
          title: Text(widget.currentGuessList[1].country),
          value: widget.currentGuessList[1].country,
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
          groupValue: radioItem,
          title: Text(widget.currentGuessList[2].country),
          value: widget.currentGuessList[2].country,
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        Text(
          '$radioItem',
          style: TextStyle(fontSize: 23),
        )
      ],
    );
  }
}
