import 'package:flutter/material.dart';

import 'CityWidget.dart';
import 'CountriesWidget.dart';
import 'FlagsWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flags & Countries',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 24);

  static final  List<Widget> _widgetOptions = <Widget>[
    FlagsWidget(optionStyle: optionStyle),
    CountriesWidget(optionStyle: optionStyle),
    CityWidget(optionStyle: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flags & Countries"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "Flag", icon: Icon(Icons.flag_outlined)),
          BottomNavigationBarItem(
              label: "Countries", icon: Icon(Icons.language)),
          BottomNavigationBarItem(
              label: "Capital", icon: Icon(Icons.location_city)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}





