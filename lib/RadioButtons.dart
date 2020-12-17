import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  @override
  RadioButtonsWidget createState() => RadioButtonsWidget();
}

class RadioButtonsWidget extends State {

  String radioItem = '';

  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[

        RadioListTile(
          contentPadding: EdgeInsets.symmetric( horizontal: 100.0),
          groupValue: radioItem,
          title: Text('Radio Button Item 1'),
          value: 'Item 1',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        RadioListTile(
          contentPadding: EdgeInsets.symmetric( horizontal: 100.0),
          groupValue: radioItem,
          title: Text('Radio Button Item 2'),
          value: 'Item 2',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        RadioListTile(
          contentPadding: EdgeInsets.symmetric( horizontal: 100.0),
          groupValue: radioItem,
          title: Text('Radio Button Item 3'),
          value: 'Item 3',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        Text('$radioItem', style: TextStyle(fontSize: 23),)

      ],
    );
  }
}