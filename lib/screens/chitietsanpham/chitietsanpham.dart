import 'dart:ui';

import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/loaisp.dart';
import 'package:doan_cake/models/sanpham.dart';
import 'package:doan_cake/screens/chitietsanpham/components/appbarct.dart';
import 'package:doan_cake/screens/chitietsanpham/components/body.dart';
import 'package:doan_cake/screens/chitietsanpham/components/danhgia.dart';
import 'package:doan_cake/screens/chitietsanpham/components/hinhanh.dart';
import 'package:doan_cake/screens/chitietsanpham/components/sanpham.dart';
import 'package:doan_cake/widgets/heart.dart';
import 'package:doan_cake/widgets/soluong.dart';
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
          onPressed: () {
            bottomSheets(context);
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: priColor,
            primary: textColor,
          ),
          child: const Text("Thêm vào giỏ hàng")),
    );
  }
}

void bottomSheets(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: 330,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Chọn kích thước:"),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(),
            child: const Text("90x90cm"),
          ),
          const SizedBox(height: 10),
          const Text("Ghi chú:"),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Ghi chú tại đây',
              hintStyle: TextStyle(
                  fontSize: textsize - 6, fontStyle: FontStyle.italic),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text("Số Lượng"),
              SizedBox(width: 20),
              SoLuong(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text("Tổng tiền"),
              SizedBox(width: 20),
              Text(
                "120.000",
                style: TextStyle(
                  color: priceColor,
                  fontWeight: FontWeight.bold,
                  fontSize: textsize,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: deftextColor,
                  backgroundColor: defbtnColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  textStyle: const TextStyle(
                    fontSize: textsize - 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
                child: const Text("Thêm vào giỏ hàng"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: priColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  textStyle: const TextStyle(
                    fontSize: textsize - 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
                child: const Text("Đặt hàng"),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
