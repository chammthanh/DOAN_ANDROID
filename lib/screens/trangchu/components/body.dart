import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/trangchu/components/item.dart';
import 'package:doan_cake/screens/trangchu/components/menubar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);
  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/banner.png',
                  width: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const MenuBar(),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: seColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 25, right: 10),
                  title: const Text(
                    "Sản Phẩm Mới",
                    style: TextStyle(
                        fontSize: textsize + 4,
                        color: textColor,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset(
                      'assets/icons/chevron-right.svg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ItemProduct(),
                        ItemProduct(),
                        ItemProduct(),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 25, right: 10),
                  title: const Text(
                    "Sản Phẩm Yêu Thích",
                    style: TextStyle(
                        fontSize: textsize + 4,
                        color: textColor,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset(
                      'assets/icons/chevron-right.svg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ItemProduct(),
                        ItemProduct(),
                        ItemProduct(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
