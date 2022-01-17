import 'package:doan_cake/screens/giohang/components/checkbox.dart';
import 'package:doan_cake/screens/giohang/components/text.dart';
import 'package:doan_cake/screens/giohang/components/xoabutton.dart';
import 'package:flutter/material.dart';

class ItemGioHang extends StatefulWidget {
  const ItemGioHang({Key? key}) : super(key: key);
  @override
  _ItemGioHangState createState() => _ItemGioHangState();
}

class _ItemGioHangState extends State<ItemGioHang> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/product1.png",
            width: 110,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(width: 10),
          const TextGioHang(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CheckBoxGH(),
              SizedBox(height: 30),
              XoaButton(),
            ],
          ),
        ],
      ),
    );
  }
}
