import 'package:school/screens/list_teacher.dart';
import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';
import 'package:school/screens/dashboard.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:school/components/fab_bottom_app_bar.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int _selectedIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    ListTeacher(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await scanner.scan();
          setState(() {});
        },
        elevation: 2.0,
        splashColor: darkColor,
        child: Icon(Icons.qr_code_scanner, color: whiteColor),
        tooltip: 'Yukk scan qr code sekolah kamu!',
        backgroundColor: primaryColor,
      ),
      bottomNavigationBar: FabBottomAppBar(
        onTabSelected: _selectedTab,
        items: [
          FabBottomAppBarItem(iconData: Icons.dashboard, text: 'Dashboard'),
          FabBottomAppBarItem(
              iconData: Icons.supervised_user_circle_rounded,
              text: "Daftar guru"),
        ],
        notchedShape: CircularNotchedRectangle(),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
