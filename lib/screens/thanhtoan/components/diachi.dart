import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';

class DiaChiGH extends StatelessWidget {
  const DiaChiGH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Giao hàng đến",
              style: TextStyle(
                color: priColor,
                fontWeight: FontWeight.bold,
                fontSize: textsize - 4,
              ),
            ),
            Text(
              "Thay đổi",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: textsize - 4,
              ),
            ),
          ],
        ),
        const ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "49 Huỳnh Khương An",
            style: TextStyle(
              color: textColor,
              fontSize: textsize + 4,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "phường 5, quận Gò Vấp, Thành Phố Hồ Chí Minh",
            style: TextStyle(
              color: textColor,
              fontSize: textsize - 4,
            ),
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: '+ Địa chỉ cụ thể như tòa nhà, tầng ',
            hintStyle:
                TextStyle(fontSize: textsize - 6, fontStyle: FontStyle.italic),
            border: InputBorder.none,
          ),
        ),
        line,
      ],
    );
  }
}
