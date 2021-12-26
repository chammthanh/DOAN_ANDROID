import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/giohang/components/body.dart';
import 'package:doan_cake/screens/giohang/components/dathangbar.dart';
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
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  BodyGioHang(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: DatHangBar(),
        ));
  }
}
