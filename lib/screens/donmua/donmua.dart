import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/donmua/components/navbar.dart';
import 'package:doan_cake/screens/donmua/hoanthanh/hoanthanh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonMuaPage extends StatelessWidget {
  const DonMuaPage({Key? key}) : super(key: key);
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
          'Đơn Mua',
          style: TextStyle(color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            SizedBox(height: 10),
            NavBar(),
            SizedBox(height: 10),
            HoanThanhPage(),
          ],
        ),
      ),
    );
  }
}
