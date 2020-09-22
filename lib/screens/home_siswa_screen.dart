import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:school/components/components.dart';
import 'package:school/utilities/constants.dart';

class HomeSiswaScreen extends StatefulWidget {
  HomeSiswaScreen({Key key}) : super(key: key);

  @override
  _HomeSiswaScreenState createState() => _HomeSiswaScreenState();
}

class _HomeSiswaScreenState extends State<HomeSiswaScreen> {
  int total = 20;
  int masuk = 17;
  int izin = 3;

  Map<String, double> data = {
    'masuk': 17,
    'izin': 3,
  };

  Widget __header() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text(
            "Agus Prayogi",
            style: TextStyle(
              color: white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "XII RPL 2",
            style: TextStyle(color: white),
            textAlign: TextAlign.left,
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                BoxKotak(
                  color: "B4FF7F",
                  title: "Masuk",
                  state: "17",
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: BoxKotak(
                    color: "6ab7ff",
                    title: "Total",
                    state: "20",
                  ),
                ),
                BoxKotak(
                  color: "F2C94C",
                  title: "Izin",
                  state: "3",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(25),
            width: double.infinity,
            decoration: bDecoration,
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                __header(),
                Container(
                  width: 110,
                  height: 110,
                  child: PieChart(
                      dataMap: data,
                      animationDuration: Duration(milliseconds: 800),
                      ringStrokeWidth: 10,
                      legendOptions: LegendOptions(
                          showLegendsInRow: false, showLegends: false)),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.heart),
          label: "Love",
          activeIcon: FaIcon(FontAwesomeIcons.solidHeart),
        )
      ], selectedItemColor: primaryColor, unselectedItemColor: black),
    );
  }
}
