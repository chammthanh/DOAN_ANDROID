import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DSDiaChi extends StatefulWidget {
  const DSDiaChi({Key? key}) : super(key: key);
  @override
  State<DSDiaChi> createState() => DSDiaChiState();
}

class DSDiaChiState extends State<DSDiaChi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "49,Huỳnh Khương An",
            style: TextStyle(color: textColor, fontSize: textsize),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text(
              "Phường 5, Gò Vấp, Thành Phố Hồ Chí Minh",
              maxLines: 1,
              style: TextStyle(color: subTextColor, fontSize: textsize - 6),
            ),
          ),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/chevron-right.svg',
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: Colors.grey.withOpacity(0.2),
        )
      ],
    );
  }
}
