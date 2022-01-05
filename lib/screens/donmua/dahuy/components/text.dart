import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class TextHuy extends StatelessWidget {
  const TextHuy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text(
          "Bánh sinh nhật có chữ HAPPY BIRTHDAY màu navy ",
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("90x90cm"),
                Text("x1"),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "120.000đ",
              style: TextStyle(
                fontSize: textsize - 4,
                color: priceColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
