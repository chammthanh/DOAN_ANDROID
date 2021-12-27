import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/sanpham.dart';
import 'package:doan_cake/screens/trangmieng/components/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrangMiengPage extends StatefulWidget {
  const TrangMiengPage({Key? key}) : super(key: key);
  @override
  _TrangMiengPageState createState() => _TrangMiengPageState();
}

class _TrangMiengPageState extends State<TrangMiengPage> {
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
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              'assets/icons/chevron-left.svg',
            ),
          ),
          title: const Text(
            'Tráng Miệng',
            style: TextStyle(color: textColor),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/giohang");
              },
              padding: const EdgeInsets.only(right: 20),
              constraints: const BoxConstraints(),
              icon: SvgPicture.asset("assets/icons/shopping-cart.svg"),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: sanpham.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 252,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => ItemTM(sanpham: sanpham[index])),
        ));
  }
}
