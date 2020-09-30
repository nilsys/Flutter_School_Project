import 'package:flutter/material.dart';
import 'package:school/components/components.dart';
import 'package:school/screens/screens.dart';
import 'package:school/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          "Login",
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
                child: Text("App Name", style: txtStyle),
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
                          label: "Username",
                          onChange: (value) => {
                            setState(() => {email = value})
                          },
                          icon: Icons.person,
                        ),
                        TextInput(
                          label: "Password",
                          onChange: (value) => {
                            setState(() => {password = value})
                          },
                          icon: Icons.lock,
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
