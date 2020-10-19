import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class TabBarAbsensi extends StatefulWidget {
  TabBarAbsensi({
    Key key,
  }) : super(key: key);
  @override
  _TabBarAbsensiState createState() => _TabBarAbsensiState();
}

class _TabBarAbsensiState extends State<TabBarAbsensi>
    with SingleTickerProviderStateMixin {
  int tabIndex = 0;
  final colors = [Color(0xff2f80ed), Color(0xff219653), Color(0xffeb5757)];
  Color indicatorColor;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _itemTb.length, vsync: this)
      ..addListener(() {
        setState(() {
          indicatorColor = colors[_controller.index];
        });
      });
    indicatorColor = colors[0];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Tab> _itemTb = <Tab>[
    Tab(
      child: Text(
        "Masuk",
        style:
            TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
      ),
    ),
    Tab(
      child: Text(
        "Telat",
        style:
            TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
      ),
    ),
    Tab(
      child: Text(
        "Tidak Masuk",
        style:
            TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Poppins'),
      ),
    ),
  ];

  final _itemTv = [
    Center(
        child: Text(
      "0",
      style: TextStyle(fontSize: 40),
    )),
    Center(
        child: Text(
      "1",
      style: TextStyle(fontSize: 40),
    )),
    Center(
        child: Text(
      "2",
      style: TextStyle(fontSize: 40),
    )),
  ];

  TabBar tb() {
    return TabBar(
      controller: _controller,
      isScrollable: true,
      indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3.0, color: indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 20.0)),
      tabs: _itemTb,
    );
  }

  TabBarView tv() {
    return TabBarView(
      controller: _controller,
      children: _itemTv,
    );
  }

  MaterialApp _buildScreen() {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(tb().preferredSize.height),
              child: Container(
                  width: double.infinity, color: Colors.white, child: tb())),
          toolbarHeight: 48,
        ),
        body: tv(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScreen();
  }
}
