import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/giohang/components/checkbox.dart';
import 'package:doan_cake/screens/giohang/components/text.dart';
import 'package:doan_cake/screens/giohang/components/xoabutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

class GioHang extends StatefulWidget {
  const GioHang({Key? key}) : super(key: key);
  @override
  _GioHangState createState() => _GioHangState();
}

class _GioHangState extends State<GioHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset("assets/icons/chevron-left.svg")),
        title: const Text(
          "Giỏ Hàng",
          style: TextStyle(color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/product1.png",
                    width: 100,
                    height: 120,
                    fit: BoxFit.fitWidth,
                  ),
                  const TextGioHang(),
                  Column(
                    children: const [
                      CheckBox(),
                      SizedBox(height: 15),
                      XoaButton(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
