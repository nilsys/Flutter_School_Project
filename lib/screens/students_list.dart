import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class StudentsList extends StatefulWidget {
  @override
  _StudentsListState createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabBar tabbar = TabBar(
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
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(tabbar.preferredSize.height),
                child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: tabbar)),
            toolbarHeight: 48,
          ),
          body: TabBarView(
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
          ),
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
