import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/trangchu/components/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SanPhamYeuThich extends StatelessWidget {
  const SanPhamYeuThich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Sản Phẩm Yêu Thích",
            style: TextStyle(
                fontSize: textsize,
                color: textColor,
                fontWeight: FontWeight.bold),
          ),
          trailing: IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset(
              'assets/icons/chevron-right.svg',
              width: 32,
              height: 32,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              ItemProduct(),
              ItemProduct(),
              ItemProduct(),
            ],
          ),
        ),
      ],
    );
  }
}
