import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/line.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class DanhGia extends StatelessWidget {
  const DanhGia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Đánh giá sản phẩm",
            style: TextStyle(
              fontSize: textsize,
              fontWeight: FontWeight.bold,
            ),
          ),
          line,
          GFListTile(
            padding: EdgeInsets.zero,
            avatar: SizedBox(
              width: 55,
              height: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Thanh Trâm",
              style: TextStyle(
                fontSize: textsize - 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            subTitle: Row(
              children: const [
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
              ],
            ),
            description: Wrap(
              children: const [
                Text(
                    "Chất lượng sản phẩm tuyệt vời, Đóng gói sản phẩm rất đẹp và chắc chắn "),
              ],
            ),
          ),
          line,
          GFListTile(
            padding: EdgeInsets.zero,
            avatar: SizedBox(
              width: 55,
              height: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Thanh Trâm",
              style: TextStyle(
                fontSize: textsize - 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            subTitle: Row(
              children: const [
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
              ],
            ),
            description: Wrap(
              children: [
                const Text(
                    "Chất lượng sản phẩm tuyệt vời, Đóng gói sản phẩm rất đẹp và chắc chắn "),
              ],
            ),
          ),
          line,
          GFListTile(
            padding: EdgeInsets.zero,
            avatar: SizedBox(
              width: 55,
              height: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Thanh Trâm",
              style: TextStyle(
                fontSize: textsize - 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            subTitle: Row(
              children: const [
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
                Icon(Icons.star, size: 16, color: Colors.orange),
              ],
            ),
            description: Wrap(
              children: [
                const Text(
                    "Chất lượng sản phẩm tuyệt vời, Đóng gói sản phẩm rất đẹp và chắc chắn "),
              ],
            ),
          ),
          line,
        ],
      ),
    );
  }
}
