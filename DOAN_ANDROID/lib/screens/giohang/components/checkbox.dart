import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class CheckBoxGH extends StatefulWidget {
  const CheckBoxGH({Key? key}) : super(key: key);
  @override
  _CheckBoxGHState createState() => _CheckBoxGHState();
}

class _CheckBoxGHState extends State<CheckBoxGH> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        activeColor: priColor,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
