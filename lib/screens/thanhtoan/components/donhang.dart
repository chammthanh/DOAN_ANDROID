import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';

class DonHang extends StatelessWidget {
  const DonHang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Đơn hàng của bạn",
          style: TextStyle(
            color: priColor,
            fontWeight: FontWeight.bold,
            fontSize: textsize - 4,
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Text("1x"),
          minLeadingWidth: 20,
          title: const Text(
            "Bánh sinh nhật có chữ HAPPY BIRTHDAY màu xanh navy",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: const Text("90x90cm"),
          trailing: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("120.000"), Icon(Icons.cancel)],
            ),
          ),
        ),
        line,
        const ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Icons.description_outlined,
            size: 36,
          ),
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Ghi chú tại đây',
              hintStyle: TextStyle(
                  fontSize: textsize - 6, fontStyle: FontStyle.italic),
              border: InputBorder.none,
            ),
          ),
        ),
        line,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Tạm tính",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("120.000"),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Phí giao hàng",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("10.000"),
          ],
        )
      ],
    );
  }
}
