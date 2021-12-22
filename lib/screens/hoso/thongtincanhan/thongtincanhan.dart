import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/components/btnluu.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/components/textform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThongTin extends StatefulWidget {
  const ThongTin({Key? key}) : super(key: key);
  @override
  _ThongTinState createState() => _ThongTinState();
}

class _ThongTinState extends State<ThongTin> {
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
          'Thông Tin Cá Nhân',
          style: TextStyle(color: textColor),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Thay đổi ảnh đại diện",
                    style: TextStyle(
                      color: subTextColor,
                      fontSize: textsize - 6,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const TextForm(),
                const SizedBox(height: 30),
                const LuuButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
