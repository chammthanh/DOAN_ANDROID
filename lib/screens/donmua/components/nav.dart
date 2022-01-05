import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/donmua.dart';
import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final DonMua donmua;
  const Nav({Key? key, required this.donmua}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: TextButton(
        onPressed: () {},
        child: Text(
          donmua.thanhphan,
          style: const TextStyle(
            fontSize: textsize - 4,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextButton.styleFrom(
          primary: textColor,
          backgroundColor: priColor,
          padding: const EdgeInsets.symmetric(horizontal: 35),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
