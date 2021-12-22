import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/loaisp.dart';
import 'package:doan_cake/screens/trangchu/components/testmenu.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 57,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: loaisp.length,
                  itemBuilder: (context, index) =>
                      TestMenu(loaisp: loaisp[index])),
            ),
          ),
        ],
      ),
    );
  }
}
