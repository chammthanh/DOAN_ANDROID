import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/components/listaddress.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/components/thembutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiaChi extends StatefulWidget {
  const DiaChi({Key? key}) : super(key: key);
  @override
  State<DiaChi> createState() => DiaChiState();
}

class DiaChiState extends State<DiaChi> {
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
          'Danh Sách Địa Chỉ',
          style: TextStyle(color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              DSDiaChi(),
              ThemDiaChiButton(),
            ],
          ),
        ),
      ),
    );
  }
}
