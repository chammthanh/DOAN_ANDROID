import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/donmua/hoanthanh/components/button.dart';
import 'package:doan_cake/screens/donmua/hoanthanh/components/hinhanh.dart';
import 'package:doan_cake/screens/donmua/hoanthanh/components/text.dart';
import 'package:doan_cake/screens/donmua/hoanthanh/components/thanhtien.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';

class HoanThanhPage extends StatefulWidget {
  const HoanThanhPage({Key? key}) : super(key: key);
  @override
  _HoanThanhPageState createState() => _HoanThanhPageState();
}

class _HoanThanhPageState extends State<HoanThanhPage> {
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
              "Hoàn Thành",
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
              const TextHT(),
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
          const ButtonHT(),
        ],
      ),
    );
  }
}
