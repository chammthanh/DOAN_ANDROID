
import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/thanhtoan/components/body.dart';
import 'package:doan_cake/screens/thanhtoan/components/bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThanhToanPage extends StatefulWidget {
  const ThanhToanPage({Key? key}) : super(key: key);

  @override
  _ThanhToanPageState createState() => _ThanhToanPageState();
}

class _ThanhToanPageState extends State<ThanhToanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        shadowColor: shadowColor,
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/chevron-left.svg',
          ),
        ),
        title: const Text(
          'Thanh Toán',
          style: TextStyle(color: textColor),
        ),
      ),
      body: const BodyTT(),
      bottomNavigationBar: const BottomTT(),
    );
  }
}
