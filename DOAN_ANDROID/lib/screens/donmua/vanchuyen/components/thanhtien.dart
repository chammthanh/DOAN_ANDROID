import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

Widget thanhtien = Row(
  children: const [
    Text(
      "Thành Tiền: ",
      style: TextStyle(fontSize: textsize - 2),
    ),
    Text(
      "130.000đ",
      style: TextStyle(
        fontSize: textsize - 2,
        color: priceColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
);
