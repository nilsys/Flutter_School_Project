import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final Function(String x) getData;
  final String value;
  DropDown({this.getData, this.value});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String data;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text("Pilih Jurusan"),
      value: data,
      items: <String>['RPL', 'TKJ'].map<DropdownMenuItem>((value) {
        return DropdownMenuItem<String>(
          child: Text(value),
          value: value,
        );
      }).toList(),
      onChanged: (val) {
        setState(() {
          data = val;
        });
        widget.getData(val);
      },
    );
  }
}
