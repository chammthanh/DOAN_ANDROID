import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/trangchu/components/item.dart';
import 'package:flutter/material.dart';

class HoanThanh extends StatefulWidget {
  const HoanThanh({Key? key}) : super(key: key);

  @override
  _HoanThanhState createState() => _HoanThanhState();
}

class _HoanThanhState extends State<HoanThanh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priColor,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 45,
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.check_circle_outlined,
                  color: Colors.white,
                  size: 150,
                ),
                const Text(
                  "Thanh toán thành công",
                  style: TextStyle(
                    fontSize: textsize - 2,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/trangchu');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: textColor,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                      ),
                      child: const Text("Trở về trang chủ"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/donmua');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: textColor,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                      ),
                      child: const Text("Xem đơn hàng"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 330,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: seColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            'Xem thêm một số sản phẩm',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: textsize - 2,
            ),
          ),
          subtitle: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ItemProduct(),
                ItemProduct(),
                ItemProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
