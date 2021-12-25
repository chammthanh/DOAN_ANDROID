import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.topCenter,
      onPressed: () {},
      icon: SvgPicture.asset("assets/icons/circle-check.svg"),
    );
  }
}
