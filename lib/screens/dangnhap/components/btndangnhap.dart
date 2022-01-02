import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class ButtonDangNhap extends StatefulWidget {
  const ButtonDangNhap({Key? key}) : super(key: key);
  @override
  State<ButtonDangNhap> createState() => ButtonDangNhapState();
}

class ButtonDangNhapState extends State<ButtonDangNhap> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/trangchu');
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
    );
  }
}
