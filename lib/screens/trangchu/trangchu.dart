import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/pagetest.dart';
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
  String appbarTitleString = "Hi, thanhcham";
  var appBarTitleText = const Text(
    "Hi, thanhcham",
    style: TextStyle(
        fontSize: textsize + 4, color: textColor, fontWeight: FontWeight.bold),
  );
  Color _colorappbar = priColor;
  Color _background = priColor;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _colorappbar = priColor;
        _background = priColor;
        appbarTitleString = "Hi, thanhcham";
        appBarTitleText = Text(
          appbarTitleString,
          style: const TextStyle(
              fontSize: textsize + 4,
              color: textColor,
              fontWeight: FontWeight.bold),
        );
      } else if (index == 1) {
        appbarTitleString = "Yeu Thich";

        appBarTitleText = Text(
          appbarTitleString,
          style: const TextStyle(color: textColor),
        );
      } else if (index == 2) {
        appbarTitleString = "Don Hang";
        appBarTitleText = Text(
          appbarTitleString,
          style: const TextStyle(color: textColor),
        );
      } else if (index == 3) {
        _colorappbar = Colors.white;
        _background = Colors.grey.shade100;
        appbarTitleString = "Ho So";
        appBarTitleText = Text(
          appbarTitleString,
          style: const TextStyle(color: textColor),
        );
      }
    });
  }

  static const List<Widget> _pages = [
    BodyHome(),
    PageTest(),
    BodyHome(),
    HoSo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: _colorappbar,
        elevation: 0,
        titleSpacing: 20,
        title: appBarTitleText,
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset("assets/icons/search.svg"),
          ),
          const SizedBox(width: 15),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/giohang");
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset("assets/icons/shopping-cart.svg"),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _pages.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
