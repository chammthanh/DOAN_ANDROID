import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/components/dangxuatbutton.dart';
import 'package:doan_cake/screens/hoso/components/listitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HoSo extends StatefulWidget {
  const HoSo({Key? key}) : super(key: key);
  @override
  State<HoSo> createState() => HoSoState();
}

class HoSoState extends State<HoSo> {
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
            Navigator.pushNamed(context, '/trangchu');
          },
          icon: SvgPicture.asset(
            'assets/icons/chevron-left.svg',
          ),
        ),
        title: const Text(
          'Hồ Sơ',
          style: TextStyle(color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/banner.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'thanhcham',
                      style: TextStyle(
                          fontSize: textsize + 4, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 35),
                    const ListItem(),
                    const SizedBox(height: 30),
                    const ButtonDangXuat(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
