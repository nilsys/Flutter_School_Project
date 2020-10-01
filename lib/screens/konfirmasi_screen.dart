import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:school/components/components.dart';
import 'package:school/screens/screens.dart';
import 'package:school/utilities/constants.dart';

class KonfirmasiScreen extends StatefulWidget {
  KonfirmasiScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _KonfirmasiScreenState createState() => _KonfirmasiScreenState();
}

class _KonfirmasiScreenState extends State<KonfirmasiScreen> {
  String email;
  String password;

  Widget _btnLogin() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      width: double.infinity,
      height: 45,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return HomeSiswaScreen();
              },
            ),
          );
        },
        child: Text(
          "Submit",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        color: primaryColor,
        textColor: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2 + 50,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Konfirmasi Data", style: txtStyle),
              ),
              Container(
                  decoration: kBoxDecoration,
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  margin: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        TextInput(
                          label: "NISN",
                          onChange: (value) => {
                            setState(() => {email = value})
                          },
                          icon: Icons.person,
                        ),
                        InputDatePicker(
                          labelText: "Tanggal Lahir",
                          prefixIcon: Icon(Icons.date_range),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          dateFormat: DateFormat.yMMMd(),
                          lastDate: DateTime.now().add(Duration(days: 366)),
                          firstDate: DateTime.now(),
                          initialDate: DateTime.now().add(Duration(days: 1)),
                          onDateChanged: (selectedDate) {
                            // Do something with the selected date
                          },
                        ),
                        _btnLogin(),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
