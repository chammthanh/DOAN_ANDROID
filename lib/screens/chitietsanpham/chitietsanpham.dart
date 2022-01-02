import 'dart:ui';

import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/loaisp.dart';
import 'package:doan_cake/models/sanpham.dart';
import 'package:doan_cake/screens/chitietsanpham/components/appbarct.dart';
import 'package:doan_cake/screens/chitietsanpham/components/body.dart';
import 'package:doan_cake/screens/chitietsanpham/components/danhgia.dart';
import 'package:doan_cake/screens/chitietsanpham/components/hinhanh.dart';
import 'package:doan_cake/screens/chitietsanpham/components/sanpham.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ChiTietSP extends StatefulWidget {
  const ChiTietSP({Key? key}) : super(key: key);

  @override
  _ChiTietSPState createState() => _ChiTietSPState();
}

class _ChiTietSPState extends State<ChiTietSP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: const [
                HinhAnhSP(),
                AppBarCT(),
                BodyCTSP(),
                SizedBox(height: 20),
              ],
            ),
            const SizedBox(height: 20),
            const DanhGia(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Một số sản phẩm liên quan",
                    style: TextStyle(
                      fontSize: textsize,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 230,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: loaisp.length,
                              itemBuilder: (context, index) => SanPhamLQ(
                                    sanpham: sanpham[index],
                                  )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: priColor,
            primary: textColor,
          ),
          child: const Text("Thêm vào giỏ hàng")),
    );
  }
}
