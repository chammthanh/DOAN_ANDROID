import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/giohang/components/checkbox.dart';
import 'package:doan_cake/screens/giohang/components/item.dart';
import 'package:flutter/material.dart';

class BodyGioHang extends StatefulWidget {
  const BodyGioHang({Key? key}) : super(key: key);
  @override
  _BodyGioHangState createState() => _BodyGioHangState();
}

class _BodyGioHangState extends State<BodyGioHang> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: const [
                  CheckBoxGH(),
                  Text(
                    'Chọn tất cả',
                    style: TextStyle(fontSize: textsize - 4),
                  )
                ],
              ),
              const ItemGioHang(),
            ],
          ),
        ),
      ],
    );
  }
}
