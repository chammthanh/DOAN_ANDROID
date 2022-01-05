import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/soluong.dart';
import 'package:flutter/material.dart';

class TextGioHang extends StatefulWidget {
  const TextGioHang({Key? key}) : super(key: key);
  @override
  _TextGioHangState createState() => _TextGioHangState();
}

class _TextGioHangState extends State<TextGioHang> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: const [
          Text(
            "Bánh sinh nhật có chữ HAPPY BIRTHDAY màu navy",
            maxLines: 2,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Kích thước: M",
              style: TextStyle(
                color: subTextColor,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 2),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "120.000đ",
              style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          SoLuong(),
        ],
      ),
    );
  }
}
