import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school/components/components.dart';
import 'package:school/screens/screens.dart';
import 'package:school/services/services.dart';
import 'package:school/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email;
  String _pass;
  String err = "";

  _login(BuildContext context) async {
    if (_email == null) {
      err = "Email Tidak Boleh Kosong";
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text(err),
          actions: [
            FlatButton(onPressed: () => Navigator.pop(context), child: Text("Ok"))
          ],
        ),
      );
    } else if (_pass == null) {
      err = "Password Harus diisi!";
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text(err),
          actions: [
            FlatButton(onPressed: () => Navigator.pop(context), child: Text("Ok"))
          ],
        ),
      );
    } else {
      ResultAuth resultAuth = await Auth.signIn(_email, _pass);
      if (resultAuth != null) {
        if (resultAuth.user != null) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HomeSiswaScreen()));
        }
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Error"),
            content: Text(resultAuth.message),
            actions: [
              FlatButton(onPressed: () => Navigator.pop(context), child: Text("Ok"))
            ],
          ),
        );
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 1,
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(alignment: Alignment.center, children: [
          Positioned(
              top: -50,
              right: -50,
              child: Image.asset(
                "assets/images/vectopright.png",
              )),
          Positioned(
              bottom: -50,
              left: -50,
              child: Image.asset(
                "assets/images/vecbottomleft.png",
              )),
          Container(
              width: double.infinity,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    Text("SIGN IN",
                        style: TextStyle(
                            color: black,
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: size.height * 0.03),
                    SvgPicture.asset(
                      "assets/images/signin.svg",
                      width: size.height * 0.35,
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      hintText: "Your Email",
                      icon: Icons.email,
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                    RoundedPasswordField(
                      onChanged: (value) {
                        setState(() {
                          _pass = value;
                        });
                      },
                    ),
                    RoundedButton(
                      press: () {
                        _login(context);
                      },
                      text: "SIGN IN",
                    ),
                    SizedBox(height: size.height * 0.03),
                    AlreadyAccount(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RegisterScreen();
                            },
                          ),
                        );
                      },
                    ),
                    OrDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SocialIcon(
                          icon: "assets/icons/google.svg",
                          press: () {},
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ]));
  }
}
