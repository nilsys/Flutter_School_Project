import 'package:flutter/material.dart';
import 'package:school/components/textFieldContainer.dart';
import 'package:school/utilities/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.white,
            ),
            fillColor: Colors.white,
            hintText: "Your Password",
            hintStyle: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            border: InputBorder.none),
      ),
    );
  }
}
