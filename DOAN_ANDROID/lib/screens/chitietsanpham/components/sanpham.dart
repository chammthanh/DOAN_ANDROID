import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/sanpham.dart';
import 'package:flutter/material.dart';

class SanPhamLQ extends StatelessWidget {
  final SanPham sanpham;
  const SanPhamLQ({Key? key, required this.sanpham}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: 140,
            height: 140,
            child: Image.asset(
              sanpham.hinhanh,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 130,
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                sanpham.ten,
                style: const TextStyle(
                    color: textColor,
                    fontSize: textsize - 9,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 2),
                    child: Text(
                      sanpham.mota,
                      style: const TextStyle(
                        fontSize: textsize - 10,
                        color: subTextColor,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      sanpham.gia,
                      style: const TextStyle(
                          fontSize: textsize - 4,
                          color: priceColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
