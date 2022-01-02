import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/danhgia/components/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DanhGiaPage extends StatefulWidget {
  const DanhGiaPage({Key? key}) : super(key: key);
  @override
  _DanhGiaPageState createState() => _DanhGiaPageState();
}

class _DanhGiaPageState extends State<DanhGiaPage> {
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
          'Đánh Giá',
          style: TextStyle(color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: const [
              ItemDG(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {},
        child: const Text(
          "Đăng Đánh Giá",
          style: TextStyle(fontSize: textsize - 4),
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          primary: textColor,
          backgroundColor: priColor,
        ),
      ),
    );
  }
}
