import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/sanpham.dart';
import 'package:doan_cake/screens/chitietsanpham/components/kichthuoc.dart';
import 'package:doan_cake/screens/chitietsanpham/components/mota.dart';
import 'package:doan_cake/widgets/heart.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';

class BodyCTSP extends StatelessWidget {
  const BodyCTSP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 375),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Bánh sinh nhật có chữ HAPPY BIRTHDAY màu xanh navy",
            style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
          ),
          // const ListTile(
          //   contentPadding: EdgeInsets.zero,
          //   title: Text(
          //     "Bánh sinh nhật có chữ HAPPY BIRTHDAY màu xanh navy",
          //     style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
          //   ),
          //   trailing: ClickHeart(),
          // ),
          const SizedBox(height: 6),
          const Text(
            "120.000đ",
            style: TextStyle(
              color: priceColor,
              fontSize: textsize + 6,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Loại : Bánh Kem",
            style: TextStyle(
              fontSize: textsize - 2,
              fontStyle: FontStyle.italic,
            ),
          ),
          // const SizedBox(height: 5),
          line,
          const KichThuoc(),
          line,
          const MoTa(),
        ],
      ),
    );
  }
}
