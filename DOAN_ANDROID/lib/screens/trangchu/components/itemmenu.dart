import 'dart:ui';

import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/loaisp.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final LoaiSP loaisp;
  const ItemMenu({Key? key, required this.loaisp}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, loaisp.pushname);
            },
            style: TextButton.styleFrom(
              backgroundColor: loaisp.mau,
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Image.asset(
              loaisp.image,
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            loaisp.loai,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: textsize - 8,
            ),
          ),
        ],
      ),
    );
  }
}
