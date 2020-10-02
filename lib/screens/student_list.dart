import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';
import 'package:intl/intl.dart';

class StudentList extends StatefulWidget {
  StudentList({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget appBarTitle = new Text(
    "Daftar Siswa",
    style: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontFamily: 'Poppins',
    ),
  );
  Widget filter = new Text("Filter");

  DateTime now = DateTime.now();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0),
          child: AppBar(
            backgroundColor: Color(0xffe8e8e8),
            title: appBarTitle,
            elevation: 0.0,
            actions: [
              new RaisedButton(
                textColor: Colors.black,
                onPressed: () {},
                color: primaryColor,
                splashColor: Colors.white,
                animationDuration: Duration(seconds: 10),
                child: Text(
                  "Filter",
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Poppins', color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
              margin: EdgeInsets.all(MediaQuery.of(context).size.width / 22),
              decoration: BoxDecoration(
                color: Color(0xffe8e8e8),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                children: [
                  Text(
                    "${DateFormat.yMMMd().format(now)}",
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  ),
                  Container(
                    width: double.infinity,
                    margin:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                    height: 20,
                    color: Color(0xffe8e8e8),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(right: 10, left: 10),
                          decoration: BoxDecoration(
                              color: Color(0xff28DF99),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Text(
                          "Absen",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(right: 10, left: 110),
                          decoration: BoxDecoration(
                              color: Color(0xffFF414D),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Text(
                          "Tidak Absen",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  Container(
                    color: Color(0xffe8e8e8),
                    padding: EdgeInsets.only(right: 30, left: 30),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: RaisedButton(
                            color: primaryColor,
                            onPressed: () {},
                            splashColor: Colors.white,
                            animationDuration: Duration(seconds: 10),
                            child: Text(
                              "XII",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: RaisedButton(
                            color: primaryColor,
                            onPressed: () {},
                            splashColor: Colors.white,
                            animationDuration: Duration(seconds: 10),
                            child: Text(
                              "XI",
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: RaisedButton(
                            color: primaryColor,
                            onPressed: () {},
                            splashColor: Colors.white,
                            animationDuration: Duration(seconds: 10),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, bottom: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffe8e8e8),
                      borderRadius: BorderRadius.circular(30)),
                  padding:
                      EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
                  child: Text(
                    "Class",
                    style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 375,
              color: Color(0xffe8e8e8),
              child: Text("ListView"),
            ),
          ],
        ),
      ),
    );
  }
}
