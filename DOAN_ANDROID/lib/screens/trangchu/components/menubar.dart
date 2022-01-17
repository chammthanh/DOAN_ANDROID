import 'package:doan_cake/models/loaisp.dart';
import 'package:doan_cake/screens/trangchu/components/itemmenu.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 85,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: loaisp.length,
                itemBuilder: (context, index) =>
                    ItemMenu(loaisp: loaisp[index])),
          ),
        ),
      ],
    );
  }
}
