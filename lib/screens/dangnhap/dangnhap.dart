import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/mediabutton.dart';
import 'package:doan_cake/screens/dangnhap/components/btndangnhap.dart';
import 'package:doan_cake/screens/dangnhap/components/inputdangnhap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class DangNhap extends StatefulWidget {
  const DangNhap({Key? key}) : super(key: key);

  @override
  State<DangNhap> createState() => _SignInState();
}

class _SignInState extends State<DangNhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(left: 30, top: 25, right: 30),
          child: Column(children: [
            Image.asset("assets/images/logo.png", width: 100, height: 100),
            const SizedBox(height: 15),
            const Text("Đăng Nhập",
                style: TextStyle(
                    fontSize: textsize + 4, fontWeight: FontWeight.bold)),
            const SizedBox(height: 36),
            const InputDangNhap(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Quên mật khẩu ?",
                    style: TextStyle(
                        color: subTextColor,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ButtonDangNhap(),
            const SizedBox(height: 35),
            const Text(
              "Hoặc đăng nhập với",
              style: TextStyle(
                fontSize: textsize - 6,
                color: subTextColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
              ),
            ),
            const MediaButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bạn chưa có tài khoản ?",
                    style: TextStyle(color: subTextColor)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dangky');
                  },
                  child: const Text("Đăng Ký",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: priColor)),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
