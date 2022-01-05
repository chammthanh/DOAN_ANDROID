import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 200),
        SvgPicture.asset("assets/images/shopping-cart.svg"),
        const Text(
          "Chưa có đơn hàng",
          style: TextStyle(
            color: subTextColor,
            fontSize: textsize - 4,
          ),
        )
      ],
    );
  }
}
