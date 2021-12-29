import 'package:doan_cake/screens/hoanthanh/components/item.dart';
import 'package:doan_cake/screens/hoanthanh/components/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HoanThanhPage extends StatelessWidget {
  const HoanThanhPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 10),
        NavBar(),
        SizedBox(height: 10),
        ItemHT(),
      ],
    );
  }
}
