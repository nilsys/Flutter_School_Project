import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class DetailAbsensi extends StatefulWidget {
  @override
  _DetailAbsensiState createState() => _DetailAbsensiState();
}

class _DetailAbsensiState extends State<DetailAbsensi> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabBar tb = TabBar(
      onTap: (index) {
        setState(() {
          tabIndex = index;
        });
      },
      isScrollable: true,
      indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3.0, color: setColor(tabIndex)),
          insets: EdgeInsets.symmetric(horizontal: 20.0)),
      tabs: [
        Tab(
          child: Text("Masuk",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins')),
        ),
        Tab(
          child: Text("Telat",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins')),
        ),
        Tab(
          child: Text("Tidak Masuk",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'Poppins')),
        ),
      ],
    );
    TabBarView tv = TabBarView(
      children: [
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
      ],
    );
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(tb.preferredSize.height),
                child: Container(
                    width: double.infinity, color: Colors.white, child: tb)),
            toolbarHeight: 48,
          ),
          body: tv,
        ),
      ),
    );
  }

  setColor(int tabIndex) {
    if (tabIndex == 0) {
      return Color(0xff2f80ed);
    } else if (tabIndex == 1) {
      return Color(0xff219653);
    } else if (tabIndex == 2) {
      return Color(0xffeb5757);
    }
  }
}
