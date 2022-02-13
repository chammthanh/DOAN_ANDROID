import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class ButtonHuy extends StatelessWidget {
  const ButtonHuy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Mua Lại",
            style: TextStyle(
              fontSize: textsize - 4,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: TextButton.styleFrom(
            primary: deftextColor,
            backgroundColor: defbtnColor,
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 30,
            ),
          ),
        ),
      ],
    );
  }
}
