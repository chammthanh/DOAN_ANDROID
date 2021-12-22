import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/dangky/dangky.dart';
import 'package:doan_cake/screens/hoso/hoso.dart';
import 'package:doan_cake/screens/trangchu/trangchu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestBottom extends StatefulWidget {
  const TestBottom({Key? key}) : super(key: key);
  @override
  _TestBottomState createState() => _TestBottomState();
}

class _TestBottomState extends State<TestBottom> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex, //New
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: textsize - 8,
      selectedFontSize: textsize - 8,
      selectedItemColor: priColor,
      unselectedItemColor: subTextColor,
      unselectedIconTheme: const IconThemeData(color: subTextColor),
      items: [
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset(
                    "assets/icons/home-fill.svg",
                    color: priColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: subTextColor,
                  ),
            label: 'Trang Chủ'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset(
                    "assets/icons/heart-fill.svg",
                    color: priColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/heart.svg",
                    color: subTextColor,
                  ),
            label: 'Yêu Thích'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset(
                    "assets/icons/fluent_box-fill.svg",
                    color: priColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/fluent_box.svg",
                    color: subTextColor,
                  ),
            label: 'Đơn Hàng'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset(
                    "assets/icons/user-fill.svg",
                    color: priColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/user.svg",
                    color: subTextColor,
                  ),
            label: 'Hồ Sơ'),
      ],
    );
  }
}
