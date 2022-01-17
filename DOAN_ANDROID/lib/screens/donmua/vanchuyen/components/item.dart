import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/donmua/vanchuyen/components/button.dart';
import 'package:doan_cake/screens/donmua/vanchuyen/components/hinhanh.dart';
import 'package:doan_cake/screens/donmua/vanchuyen/components/text.dart';
import 'package:doan_cake/screens/donmua/vanchuyen/components/thanhtien.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';

class ItemVC extends StatefulWidget {
  const ItemVC({Key? key}) : super(key: key);
  @override
  _ItemVCState createState() => _ItemVCState();
}

class _ItemVCState extends State<ItemVC> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          const Align(
            heightFactor: 1.2,
            alignment: Alignment.topRight,
            child: Text(
              "Đang vận chuyển",
              style: TextStyle(
                fontSize: textsize - 6,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              hinhanh,
              const SizedBox(width: 7),
              const TextVC(),
            ],
          ),
          // const SizedBox(height: 12),
          line,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "1 sản phẩm",
                style: TextStyle(color: subTextColor),
              ),
              thanhtien,
            ],
          ),
          const SizedBox(height: 5),
          const ButtonVC(),
        ],
      ),
    );
  }
}
