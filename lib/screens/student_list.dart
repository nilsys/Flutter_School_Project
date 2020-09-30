import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  StudentList({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 8),
        color: Color(0xff1E88E5),
        child: Column(
          children: <Widget>[
            // App Bar
            Container(
              color: Color(0xff1E88E5),
              margin: EdgeInsets.only(bottom: 21, right: 32, left: 29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Student",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            // Line
            Container(
              color: Colors.white,
              height: 3,
              margin: EdgeInsets.only(bottom: 15),
            ),
            // Description Content ListView
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(right: 32, left: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 15, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 20,
                          margin: EdgeInsets.only(left: 10, right: 21),
                          decoration: BoxDecoration(
                            color: Color(0xff28DF99),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          "Absent",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 20,
                          margin: EdgeInsets.only(left: 10, right: 21),
                          decoration: BoxDecoration(
                            color: Color(0xffFF414D),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          "Not Absent",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "01 October 2020",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // Line
            Container(
              height: 5,
              margin: EdgeInsets.only(top: 15, right: 95, left: 95, bottom: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // Text Class
            Container(
              color: Color(0xff1E88E5),
              padding: EdgeInsets.only(left: 62),
              height: 34,
              width: double.infinity,
              child: Text(
                "Class",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            // ListView
          ],
        ),
      ),
    );
  }
}
