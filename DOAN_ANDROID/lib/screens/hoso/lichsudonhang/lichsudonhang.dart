import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LSDonHang extends StatefulWidget {
  const LSDonHang({Key? key}) : super(key: key);
  @override
  State<LSDonHang> createState() => LSDonHangState();
}

class LSDonHangState extends State<LSDonHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        shadowColor: shadowColor,
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/chevron-left.svg',
          ),
        ),
        title: const Text(
          'Lịch Sử Đơn Hàng',
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
