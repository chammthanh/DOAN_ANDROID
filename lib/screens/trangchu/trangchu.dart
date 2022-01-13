import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/donmua/donmua.dart';
import 'package:doan_cake/screens/hoso/hoso.dart';
import 'package:doan_cake/screens/trangchu/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({Key? key}) : super(key: key);
  @override
  _TrangChuState createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const BodyHome(),
    const BodyHome(),
    const DonMuaPage(),
    const HoSo(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: textsize - 8,
        selectedFontSize: textsize - 8,
        selectedItemColor: deftextColor,
        unselectedItemColor: subTextColor,
        unselectedIconTheme: const IconThemeData(color: subTextColor),
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset(
                      "assets/icons/home-fill.svg",
                      color: deftextColor,
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
                      color: deftextColor,
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
                      color: deftextColor,
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
                      color: deftextColor,
                    )
                  : SvgPicture.asset(
                      "assets/icons/user.svg",
                      color: subTextColor,
                    ),
              label: 'Hồ Sơ'),
        ],
      ),
    );
  }
}
