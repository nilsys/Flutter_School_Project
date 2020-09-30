import 'package:flutter/material.dart';
import 'package:school/screens/screens.dart';
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
      theme: ThemeData(
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: lightColor,
        dividerColor: black,
        textTheme: Typography.blackMountainView,
      ),
      home: LoginScreen(),
    );
  }
}
