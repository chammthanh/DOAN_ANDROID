import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class ButtonXN extends StatelessWidget {
  const ButtonXN({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Hủy đơn",
            style: TextStyle(
              fontSize: textsize - 4,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: priColor,
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
