import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class LuuButton extends StatefulWidget {
  const LuuButton({Key? key}) : super(key: key);
  @override
  _LuuButtonState createState() => _LuuButtonState();
}

class _LuuButtonState extends State<LuuButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(priColor)),
      child: const Padding(
        padding: EdgeInsets.only(left: 40, top: 5, right: 40, bottom: 5),
        child: Text(
          'Lưu',
          style: TextStyle(fontSize: textsize - 2, color: textColor),
        ),
      ),
    );
  }
}
