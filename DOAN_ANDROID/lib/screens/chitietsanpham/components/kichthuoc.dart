import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class KichThuoc extends StatelessWidget {
  const KichThuoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Kích thước: ",
          style: TextStyle(
            fontSize: textsize - 5,
            fontStyle: FontStyle.italic,
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: subTextColor),
                  borderRadius: BorderRadius.circular(3)),
              child: const Text("90x90cm",
                  style: TextStyle(fontSize: textsize - 4)),
            ),
          ],
        ),
      ],
    );
  }
}
