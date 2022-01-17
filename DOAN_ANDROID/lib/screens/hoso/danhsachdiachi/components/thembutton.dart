import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class ThemDiaChiButton extends StatefulWidget {
  const ThemDiaChiButton({Key? key}) : super(key: key);
  @override
  _ThemDiaChiButtonState createState() => _ThemDiaChiButtonState();
}

class _ThemDiaChiButtonState extends State<ThemDiaChiButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/themdiachi');
        },
        child: const Text(
          "+ Thêm địa chỉ",
          style: TextStyle(
              color: subTextColor,
              fontSize: textsize - 6,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
