import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/dangky/components/btndangky.dart';
import 'package:doan_cake/screens/dangky/components/inputdangky.dart';
import 'package:flutter/material.dart';
import 'package:doan_cake/widgets/mediabutton.dart';

class DangKy extends StatefulWidget {
  const DangKy({Key? key}) : super(key: key);
  @override
  _DangKyState createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 10),
              const Text("Đăng Ký",
                  style: TextStyle(
                      fontSize: textsize + 4, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const InputDangKy(),
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
              const SizedBox(height: 25),
              const MediaButton(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
