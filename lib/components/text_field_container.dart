import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final Color conColor;

  const TextFieldContainer({Key key, this.conColor, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          color: conColor, borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
