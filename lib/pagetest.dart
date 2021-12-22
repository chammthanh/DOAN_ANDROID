import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/components/dangxuatbutton.dart';
import 'package:doan_cake/screens/hoso/components/listitem.dart';
import 'package:flutter/material.dart';

class PageTest extends StatefulWidget {
  const PageTest({Key? key}) : super(key: key);
  @override
  State<PageTest> createState() => PageTestState();
}

class PageTestState extends State<PageTest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'thanhcham',
              style: TextStyle(
                  fontSize: textsize + 4, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const ListItem(),
            const SizedBox(height: 40),
            const ButtonDangXuat(),
          ],
        ),
      ),
    );
  }
}
