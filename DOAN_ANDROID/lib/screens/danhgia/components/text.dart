import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class TextDG extends StatelessWidget {
  const TextDG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        title: Text(
          "Bánh sinh nhật có chữ HAPPY BIRTHDAY màu xanh nay",
          maxLines: 2,
          style: TextStyle(
            fontSize: textsize - 6,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text("90x90cm"),
      ),
    );
  }
}
