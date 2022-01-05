import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class SoLuong extends StatefulWidget {
  const SoLuong({Key? key}) : super(key: key);
  @override
  _SoLuongState createState() => _SoLuongState();
}

class _SoLuongState extends State<SoLuong> {
  int _counter = 1;
  void tangSL() {
    setState(() {
      _counter++;
    });
  }

  void giamSL() {
    if (_counter <= 1) {
      _counter = 1;
    } else {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: priColor,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: giamSL,
            icon: const Icon(
              Icons.remove,
              size: 20,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          child: Text(
            '$_counter',
            style: const TextStyle(fontSize: textsize - 2),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: priColor,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: tangSL,
            icon: const Icon(
              Icons.add,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
