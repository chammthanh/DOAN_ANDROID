import 'package:doan_cake/models/donmua.dart';
import 'package:doan_cake/screens/donmua/components/nav.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: donmua.length,
              itemBuilder: (context, index) => Nav(
                donmua: donmua[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
