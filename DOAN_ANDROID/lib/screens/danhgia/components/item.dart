import 'package:doan_cake/screens/danhgia/components/binhluan.dart';
import 'package:doan_cake/screens/danhgia/components/danhgia.dart';
import 'package:doan_cake/screens/danhgia/components/hinhanh.dart';
import 'package:doan_cake/screens/danhgia/components/text.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';

class ItemDG extends StatefulWidget {
  const ItemDG({Key? key}) : super(key: key);

  @override
  _ItemDGState createState() => _ItemDGState();
}

class _ItemDGState extends State<ItemDG> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              HinhAnh(),
              TextDG(),
            ],
          ),
          line,
          const DanhGia(),
          const BinhLuan(),
        ],
      ),
    );
  }
}
