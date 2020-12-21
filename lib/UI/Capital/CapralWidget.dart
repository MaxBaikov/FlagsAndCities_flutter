import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 2: City',
      style: optionStyle,
    );
  }
}