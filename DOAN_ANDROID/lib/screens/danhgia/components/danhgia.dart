import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class DanhGia extends StatelessWidget {
  const DanhGia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Đánh Giá",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: textsize - 4,
            color: inputTextColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.star, size: 30, color: Colors.orange),
            Icon(Icons.star, size: 30, color: Colors.orange),
            Icon(Icons.star, size: 30, color: Colors.orange),
            Icon(Icons.star, size: 30, color: Colors.orange),
            Icon(Icons.star, size: 30, color: Colors.orange),
          ],
        ),
      ],
    );
  }
}
