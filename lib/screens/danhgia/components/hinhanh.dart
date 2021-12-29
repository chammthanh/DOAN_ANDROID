import 'package:flutter/material.dart';

class HinhAnh extends StatelessWidget {
  const HinhAnh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 60,
      child: Image.asset(
        "assets/images/products/product-01.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
