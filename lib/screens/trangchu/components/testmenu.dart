import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/loaisp.dart';
import 'package:flutter/material.dart';

class TestMenu extends StatelessWidget {
  final LoaiSP loaisp;
  const TestMenu({Key? key, required this.loaisp}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        constraints: const BoxConstraints(),
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        padding: const EdgeInsets.only(left: 10, top: 7, right: 10, bottom: 7),
        child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset("${loaisp.image}", width: 35, height: 22),
                Text(
                  "${loaisp.loai}",
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold),
                )
              ],
            )),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: 3,
              offset: Offset(1, 2),
            )
          ],
        ),
      ),
    );
  }
}
