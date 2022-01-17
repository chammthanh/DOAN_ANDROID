import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/sanpham.dart';
import 'package:doan_cake/widgets/heart.dart';
import 'package:flutter/material.dart';

class ItemBQ extends StatelessWidget {
  final SanPham sanpham;
  const ItemBQ({Key? key, required this.sanpham}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
          Expanded(
            child: Image.asset(
              sanpham.hinhanh,
              width: double.maxFinite,
              height: 155,
              fit: BoxFit.cover,
            ),
          ),
          // const SizedBox(height: 10),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              sanpham.ten,
              style: const TextStyle(
                  color: textColor,
                  fontSize: textsize - 7,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sanpham.gia,
                  style: const TextStyle(
                      fontSize: textsize - 2,
                      color: priceColor,
                      fontWeight: FontWeight.bold),
                ),
                const ClickHeart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
