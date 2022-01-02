import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class ButtonDangKy extends StatefulWidget {
  const ButtonDangKy({Key? key}) : super(key: key);
  @override
  State<ButtonDangKy> createState() => ButtonDangKyState();
}

class ButtonDangKyState extends State<ButtonDangKy> {
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
          'Đăng Ký',
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
