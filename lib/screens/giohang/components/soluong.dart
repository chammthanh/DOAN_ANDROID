import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class SoLuong extends StatefulWidget {
  const SoLuong({Key? key}) : super(key: key);
  @override
  _SoLuongState createState() => _SoLuongState();
}

class _SoLuongState extends State<SoLuong> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          child: const Text(
            "1",
            style: TextStyle(fontSize: textsize),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
        )
      ],
    );
  }
}
