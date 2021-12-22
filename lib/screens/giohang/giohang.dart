import 'package:doan_cake/constraint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GioHang extends StatefulWidget {
  const GioHang({Key? key}) : super(key: key);
  @override
  _GioHangState createState() => _GioHangState();
}

class _GioHangState extends State<GioHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset("assets/icons/chevron-left.svg")),
        title: const Text("Giỏ Hàng"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/product1.png",
                  width: 50,
                  height: 50,
                ),
                SizedBox(
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
                      Text(
                        "Kích thước: M",
                        style: TextStyle(
                          color: subTextColor,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
