import 'package:flutter/material.dart';

import './RadioButtons.dart';

class FlagsWidget extends StatelessWidget {
  const FlagsWidget({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

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
                style: optionStyle,
              ),
            ),
            Container(
              //TODO заменить на radiobuttons и добавить кнопку ответить (сюда передавать параметры 3 ответа и url флага)
              child: RadioButtons(

              ),
            ),
          ]),
    );
  }
}
