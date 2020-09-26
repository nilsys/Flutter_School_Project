import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class BoxKotak extends StatelessWidget {
  final String color;
  final String title;
  final String state;
  const BoxKotak({Key key, this.color, this.title, this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      decoration: bkotak(color),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              state,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
