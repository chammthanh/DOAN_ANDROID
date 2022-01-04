import 'package:doan_cake/screens/thanhtoan/components/diachi.dart';
import 'package:doan_cake/screens/thanhtoan/components/donhang.dart';
import 'package:flutter/material.dart';

class BodyTT extends StatelessWidget {
  const BodyTT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DiaChiGH(),
          DonHang(),
        ],
      ),
    );
  }
}
