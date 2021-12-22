import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/matkhau/components/btnluu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MatKhau extends StatefulWidget {
  const MatKhau({Key? key}) : super(key: key);
  @override
  MatKhauState createState() => MatKhauState();
}

class MatKhauState extends State<MatKhau> {
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
          'Thay Đổi Mật Khẩu',
          style: TextStyle(color: textColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              SizedBox(height: 10),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Nhập Mật Khẩu mới',
                  labelStyle:
                      TextStyle(color: inputTextColor, fontSize: textsize - 2),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: inputTextColor)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: 'Xác Nhận Lại Mật Khẩu',
                  labelStyle:
                      TextStyle(color: inputTextColor, fontSize: textsize - 2),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: inputTextColor)),
                ),
              ),
              SizedBox(height: 365),
              LuuButton(),
            ],
          ),
        ),
      ),
    );
  }
}
