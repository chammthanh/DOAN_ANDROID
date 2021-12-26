import 'package:doan_cake/constraint.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClickHeart extends StatefulWidget {
  const ClickHeart({Key? key}) : super(key: key);
  @override
  _ClickHeartState createState() => _ClickHeartState();
}

class _ClickHeartState extends State<ClickHeart> {
  bool _clickheart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(5),
      child: IconButton(
        onPressed: () {
          setState(() {
            _clickheart = !_clickheart;
          });
        },
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: _clickheart
            ? SvgPicture.asset(
                "assets/icons/heart-fill.svg",
                color: heartbtn,
              )
            : SvgPicture.asset("assets/icons/heart.svg"),
      ),
    );
  }
}
