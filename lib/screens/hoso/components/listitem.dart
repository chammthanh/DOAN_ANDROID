import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/danhsachdiachi.dart';
import 'package:doan_cake/screens/hoso/lichsudonhang/lichsudonhang.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/thongtincanhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);
  @override
  State<ListItem> createState() => ListItemState();
}

class ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ThongTin()));
              },
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: const VisualDensity(vertical: 0),
                    title: const Text(
                      'Thông tin cá nhân',
                      style: TextStyle(fontSize: textsize - 2),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ThongTin()));
                      },
                      icon: SvgPicture.asset('assets/icons/chevron-right.svg'),
                    ),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 5,
                shadowColor: shadowColor,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DiaChi()));
              },
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: const VisualDensity(vertical: 0),
                    title: const Text(
                      'Danh sách địa chỉ',
                      style: TextStyle(fontSize: textsize - 2),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DiaChi()));
                      },
                      icon: SvgPicture.asset('assets/icons/chevron-right.svg'),
                    ),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 5,
                shadowColor: shadowColor,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DonHang()));
              },
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    visualDensity: const VisualDensity(vertical: 0),
                    title: const Text(
                      'Lịch sử đơn hàng',
                      style: TextStyle(fontSize: textsize - 2),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DonHang()));
                      },
                      icon: SvgPicture.asset('assets/icons/chevron-right.svg'),
                    ),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 5,
                shadowColor: shadowColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
