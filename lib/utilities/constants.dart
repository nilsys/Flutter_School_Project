import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final kBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(width: 1, color: Colors.blue),
    boxShadow: [
      BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 2))
    ]);

final inputBoxDecoration = BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 2))
    ]);
final txtStyle =
    TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);

final bDecoration = BoxDecoration(
  color: primaryColor,
  border: Border.all(width: 1, color: white),
  borderRadius: BorderRadius.circular(10),
);

final Function bkotak = (@required String color) {
  return BoxDecoration(
    color: Hexcolor(color),
    borderRadius: BorderRadius.circular(5),
  );
};

final Color primaryColor = Hexcolor("#1E88E5");
final Color lightColor = Hexcolor("#6ab7ff");
final Color darkColor = Hexcolor("#005cb2");
final Color white = Hexcolor("#ffffff");
final Color black = Hexcolor("#000000");
