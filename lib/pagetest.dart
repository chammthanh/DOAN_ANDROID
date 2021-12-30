import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTest extends StatefulWidget {
  const PageTest({Key? key}) : super(key: key);
  @override
  State<PageTest> createState() => PageTestState();
}

class PageTestState extends State<PageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        shadowColor: shadowColor,
        leadingWidth: 40,
        title: const Text(
          'Thông Tin Cá Nhân',
          style: TextStyle(color: textColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: Search());
            },
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
    );
  }
}
