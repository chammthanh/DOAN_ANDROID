import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class DatHangBar extends StatefulWidget {
  const DatHangBar({Key? key}) : super(key: key);
  @override
  _DatHangBarState createState() => _DatHangBarState();
}

class _DatHangBarState extends State<DatHangBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: double.maxFinite,
      height: 90,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: dhColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Tổng cộng:"),
              Text(
                "120.000đ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: textsize),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Đặt Hàng",
              style: TextStyle(fontSize: textsize - 4, color: textColor),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.only(left: 40, top: 12, right: 40, bottom: 12),
              ),
              backgroundColor: MaterialStateProperty.all(btnColor),
            ),
          )
        ],
      ),
    );
  }
}
