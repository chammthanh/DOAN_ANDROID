import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/components/dangxuatbutton.dart';
import 'package:doan_cake/screens/hoso/components/listitem.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: priColor,
              elevation: 0,
              titleSpacing: 20,
              title: Text("Hi,Thanh Trâm"),
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
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome shopping platform',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
