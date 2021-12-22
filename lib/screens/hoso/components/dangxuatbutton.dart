import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/dangnhap/dangnhap.dart';
import 'package:flutter/material.dart';

class ButtonDangXuat extends StatefulWidget {
  const ButtonDangXuat({Key? key}) : super(key: key);
  @override
  State<ButtonDangXuat> createState() => ButtonDangXuatState();
}

class ButtonDangXuatState extends State<ButtonDangXuat> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => const DangNhap()));
      },
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(priColor)),
      child: const Padding(
        padding: EdgeInsets.only(left: 40, top: 5, right: 40, bottom: 5),
        child: Text(
          'Đăng Xuất',
          style: TextStyle(fontSize: textsize - 2, color: textColor),
        ),
      ),
    );
  }
}
