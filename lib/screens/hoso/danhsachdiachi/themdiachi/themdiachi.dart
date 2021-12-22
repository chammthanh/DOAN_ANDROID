import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/themdiachi/components/luubutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemDiaChi extends StatefulWidget {
  const ThemDiaChi({Key? key}) : super(key: key);
  @override
  _ThemDiaChiState createState() => _ThemDiaChiState();
}

class _ThemDiaChiState extends State<ThemDiaChi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Thêm Địa Chỉ",
            style: TextStyle(color: textColor),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/chevron-left.svg"),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    initialValue: "Hồ Chí Minh",
                    decoration: const InputDecoration(
                      label: Text("Thành Phố"),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      label: Text("Quận/Huyện"),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      label: Text("Phường/Xã"),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      label: Text("Địa chỉ cụ thể"),
                    ),
                  ),
                  const SizedBox(height: 200),
                  const LuuButton(),
                ],
              ),
            ),
          ),
        ));
  }
}
