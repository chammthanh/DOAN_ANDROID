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
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "90x90cm",
                style: TextStyle(
                  fontSize: textsize - 2,
                  fontStyle: FontStyle.italic,
                  color: textColor,
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "90x90cm",
                style: TextStyle(
                  fontSize: textsize - 2,
                  fontStyle: FontStyle.italic,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
