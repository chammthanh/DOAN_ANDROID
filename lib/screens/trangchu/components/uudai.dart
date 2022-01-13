import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UuDai extends StatefulWidget {
  UuDai({Key? key}) : super(key: key);

  @override
  _UuDaiState createState() => _UuDaiState();
}

class _UuDaiState extends State<UuDai> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ưu đãi hôm nay",
            style: TextStyle(
              fontSize: textsize,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                uudai,
                const SizedBox(width: 20),
                uudai,
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

Widget uudai = Container(
  padding: const EdgeInsets.all(15),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: const Color.fromRGBO(245, 224, 217, 1),
  ),
  child: Row(
    children: [
      Image.asset('assets/images/gift.png', width: 60, height: 60),
      const SizedBox(width: 5),
      Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        const SizedBox(
          width: 140,
          child: Text(
            "MÃ GIẢM GIẢM 10% CHO NGÀY 1.1",
            maxLines: 2,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(108, 116, 132, 1)),
          ),
        ),
        const SizedBox(height: 5),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: priColor,
            primary: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
          ),
          onPressed: () {},
          child: const Text(
            "Lấy mã ngay!",
            style: TextStyle(
              fontSize: textsize - 8,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
    ],
  ),
);
