import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/heart.dart';
import 'package:flutter/material.dart';

class ItemBK extends StatefulWidget {
  const ItemBK({Key? key}) : super(key: key);
  @override
  _ItemBKState createState() => _ItemBKState();
}

class _ItemBKState extends State<ItemBK> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 175,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 5,
            offset: Offset(3, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/product1.png',
            width: double.maxFinite,
            height: 155,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Bánh sinh nhật có chữ HAPPY BIRTHDAY màu xanh navy',
              style: TextStyle(
                  color: textColor,
                  fontSize: textsize - 7,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '120.000đ',
                  style: TextStyle(
                      fontSize: textsize - 2,
                      color: priceColor,
                      fontWeight: FontWeight.bold),
                ),
                ClickHeart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
