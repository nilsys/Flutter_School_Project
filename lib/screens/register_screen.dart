import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:school/components/components.dart';
import 'package:school/screens/screens.dart';
import 'package:school/services/services.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _user;
  String _pass;

  _register(BuildContext con) async {
    if (_user.isEmpty) {
      Scaffold.of(con)
          .showSnackBar(SnackBar(content: Text("Email Harus diisi!!")));
    } else if (_pass.isEmpty) {
      Scaffold.of(con)
          .showSnackBar(SnackBar(content: Text("Password Harus diisi!!")));
    } else {
      ResultAuth _rest = await Auth.signUp(_user, _pass);
      if (_rest.user != null) {
        Navigator.of(con).pushReplacement(MaterialPageRoute(builder: (con) {
          return KonfirmasiScreen();
        }));
      } else {
        Scaffold.of(con).showSnackBar(SnackBar(content: Text(_rest.message)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/vectopleft.png",
                width: size.width * 0.35)),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/vecbottomright.png",
                width: size.width * 0.35)),
        Container(
            height: size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.05),
                  Text("SIGN UP",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/images/signup.svg",
                    width: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(
                    hintText: "Your Email",
                    icon: Icons.email,
                    onChanged: (value) {
                      setState(() {
                        _user = value;
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
                      _register(context);
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return RegisterScreen();
                      //     },
                      //   ),
                      // );
                    },
                    text: "SIGN UP",
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyAccount(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
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
      ],
    ));
  }
}
