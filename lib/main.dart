import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:school/screens/dashboard.dart';
import 'package:school/screens/master.dart';
import 'package:school/screens/splash.dart';
import 'package:school/utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: lightColor,
          dividerColor: black,
          textTheme: Typography.blackMountainView,
        ),
        home: Splash());
  }
}
