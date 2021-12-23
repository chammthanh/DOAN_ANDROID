import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XoaButton extends StatefulWidget {
  const XoaButton({Key? key}) : super(key: key);
  @override
  _XoaButtonState createState() => _XoaButtonState();
}

class _XoaButtonState extends State<XoaButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: shadowColor,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/trash-2.svg"),
      ),
    );
  }
}
