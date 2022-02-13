import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/trangchu/components/item.dart';
import 'package:doan_cake/screens/trangchu/components/menubar.dart';
import 'package:doan_cake/screens/trangchu/components/slide.dart';
import 'package:doan_cake/screens/trangchu/components/spmoi.dart';
import 'package:doan_cake/screens/trangchu/components/spyeuthich.dart';
import 'package:doan_cake/screens/trangchu/components/uudai.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:doan_cake/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);
  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: priColor,
        elevation: 0,
        title: const Text(
          'Hi,thanhcham',
          style: TextStyle(
              fontSize: textsize + 4,
              color: textColor,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // showSearch(context: context, delegate: Search());
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Slide(),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Loại sản phẩm",
                          style: TextStyle(
                              fontSize: textsize,
                              color: textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        MenuBar(),
                      ],
                    ),
                  ),
                  UuDai(),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        const SanPhamMoi(),
                        line,
                        const SanPhamYeuThich(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
