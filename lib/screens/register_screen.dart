import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:school/components/already_account.dart';
import 'package:school/components/or_divider.dart';
import 'package:school/components/rounded_button.dart';
import 'package:school/components/rounded_input_field.dart';
import 'package:school/components/rounded_password_field.dart';
import 'package:school/components/social_icon.dart';

import 'package:school/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
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
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    press: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
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
