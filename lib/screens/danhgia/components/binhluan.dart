import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class BinhLuan extends StatelessWidget {
  const BinhLuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Thêm bình luận',
        hintStyle:
            TextStyle(fontSize: textsize - 6, fontStyle: FontStyle.italic),
        border: InputBorder.none,
      ),
    );
  }
}
