import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class HomeGuruScreen extends StatefulWidget {
  HomeGuruScreen({Key key}) : super(key: key);

  @override
  _HomeGuruScreenState createState() => _HomeGuruScreenState();
}

class _HomeGuruScreenState extends State<HomeGuruScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Column(
        children: [
          Container(
            color: primaryColor,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          )
        ],
      ),
    );
  }
}
