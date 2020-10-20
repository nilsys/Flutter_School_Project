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

final boxHeader = BoxDecoration(
  color: primaryColor,
  border: Border.all(width: 1, color: white),
  borderRadius: BorderRadius.circular(8),
);

final bkotak = (String color) {
  return BoxDecoration(
    color: Hexcolor(color),
    borderRadius: BorderRadius.circular(5),
  );
};

final titleStyle = (double size) {
  return TextStyle(
    color: white,
    fontSize: size,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );
};

const whiteColor = Color(0xFFFFFFFF);
const grey4Color = Color(0xFFFBDBDBD);
const grey2Color = Color(0xFFF4F4F4F);
const greyColor = Color(0xFFF2F2F2);
const superLightColor = Color(0xFFE1F1FF);
const blackColor = Color(0xFF333333);


final primaryColor = Hexcolor("#1E88E5");
final lightColor = Hexcolor("#6ab7ff");
final grayColor = Hexcolor("a6a6a4");
final darkColor = Hexcolor("#005cb2");
final white = Hexcolor("#ffffff");
final black = Hexcolor("#000000");

final masukC = Hexcolor("B4FF7F");
final izinC = Hexcolor("F2C94C");
final telatC = Hexcolor("FC7EC2");
final alpaC = Hexcolor("FC7E7E");
