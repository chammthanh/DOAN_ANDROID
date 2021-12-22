import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClickHeart extends StatefulWidget {
  const ClickHeart({Key? key}) : super(key: key);
  @override
  _ClickHeartState createState() => _ClickHeartState();
}

class _ClickHeartState extends State<ClickHeart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(5),
      child: IconButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: SvgPicture.asset("assets/icons/heart.svg"),
      ),
    );
  }
}
