import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonHang extends StatefulWidget {
  const DonHang({Key? key}) : super(key: key);
  @override
  State<DonHang> createState() => DonHangState();
}

class DonHangState extends State<DonHang> {
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
