import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class MoTa extends StatelessWidget {
  const MoTa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Thông tin sản phẩm: ",
          style: TextStyle(
            fontSize: textsize - 5,
            fontStyle: FontStyle.italic,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Wrap(
            children: const [
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh ex. Fusce quis sodales arcu. "
                  "Nullam mattis tristique euismod. Curabitur nec eleifend massa. Praesent ut cursus dolor, ut dignissim nisi. "
                  "Mauris tincidunt interdum mauris, sed posuere sapien gravida pharetra. Quisque volutpat et eros eu ornare. "
                  "Suspendisse potenti. ",
                  style: TextStyle(fontSize: textsize - 4)),
            ],
          ),
        ),
      ],
    );
  }
}
