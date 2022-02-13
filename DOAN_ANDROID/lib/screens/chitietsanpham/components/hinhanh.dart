import 'package:flutter/material.dart';

class HinhAnhSP extends StatelessWidget {
  const HinhAnhSP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 410,
      child: Image.asset(
        "assets/images/products/product-01.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
