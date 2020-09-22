import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class TextInput extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function(String x) onChange;
  const TextInput(
      {Key key,
      @required this.label,
      @required this.onChange,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: inputBoxDecoration,
      margin: EdgeInsets.only(top: 12),
      child: TextFormField(
        onChanged: (value) => {onChange(value)},
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 1)),
            prefixIcon: Icon(icon),
            labelText: label),
      ),
    );
  }
}
