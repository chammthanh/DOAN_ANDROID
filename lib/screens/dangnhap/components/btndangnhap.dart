import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/trangchu/trangchu.dart';
import 'package:flutter/material.dart';

class ButtonDangNhap extends StatefulWidget {
  const ButtonDangNhap({Key? key}) : super(key: key);
  @override
  State<ButtonDangNhap> createState() => ButtonDangNhapState();
}

class ButtonDangNhapState extends State<ButtonDangNhap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TrangChu()));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(priColor),
        ),
        child: const Text(
          'Đăng Nhập',
          style: TextStyle(
            color: textColor,
            fontSize: textsize - 6,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 15,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
