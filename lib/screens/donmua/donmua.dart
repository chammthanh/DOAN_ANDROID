import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/donmua/dahuy/dahuy.dart';
import 'package:doan_cake/screens/donmua/donggoi/donggoi.dart';
import 'package:doan_cake/screens/donmua/donggoi/test.dart';
import 'package:doan_cake/screens/donmua/hoanthanh/hoanthanh.dart';
import 'package:doan_cake/screens/donmua/vanchuyen/vanchuyen.dart';
import 'package:doan_cake/screens/donmua/xacnhan/xacnhan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonMuaPage extends StatelessWidget {
  const DonMuaPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: priColor,
            tabs: [
              Tab(
                child: Text(
                  "Chờ xác nhận",
                  style: TextStyle(color: subTextColor),
                ),
              ),
              Tab(
                child: Text(
                  "Đóng gói",
                  style: TextStyle(color: subTextColor),
                ),
              ),
              Tab(
                child: Text(
                  "Đang Giao",
                  style: TextStyle(color: subTextColor),
                ),
              ),
              Tab(
                child: Text(
                  "Đã Giao",
                  style: TextStyle(color: subTextColor),
                ),
              ),
              Tab(
                child: Text(
                  "Đã hủy",
                  style: TextStyle(color: subTextColor),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            XacNhanPage(),
            Test(),
            // DongGoiPage(),
            VanChuyenPage(),
            HoanThanhPage(),
            HuyPage(),
          ],
        ),
      ),
    );
  }
}
