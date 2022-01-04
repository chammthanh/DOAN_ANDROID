import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class BottomTT extends StatelessWidget {
  const BottomTT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: const BoxDecoration(
          color: seColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Tổng cộng",
                style: TextStyle(
                  fontSize: textsize - 4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                "120.000đ",
                style: TextStyle(
                  fontSize: textsize,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/hoanthanh');
            },
            style: ElevatedButton.styleFrom(
              primary: priColor,
              onPrimary: textColor,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            ),
            child: const Text(
              "Đặt hàng",
              style: TextStyle(
                fontSize: textsize - 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
