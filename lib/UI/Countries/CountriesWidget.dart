import 'package:flutter/material.dart';

class CountriesWidget extends StatelessWidget {
  const CountriesWidget({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 1: Countries',
      style: optionStyle,
    );
  }
}