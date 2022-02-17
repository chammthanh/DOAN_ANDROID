import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/models/loai.dart';
import 'package:doan_cake/provider/loaispProvider.dart';
import 'package:flutter/material.dart';

class TestMenu extends StatefulWidget {
  const TestMenu({Key? key}) : super(key: key);

  @override
  _TestMenuState createState() => _TestMenuState();
}

class _TestMenuState extends State<TestMenu> {
  List<LoaiSanPham> _list = [];
  void loaisp() async {
    final data = await LoaiSPProvider().dsSP();
    setState(() {
      _list = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loaisp();
  }

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
              itemCount: _list.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, loaisp.pushname);
                      },
                      style: TextButton.styleFrom(
                        // backgroundColor: loaisp.mau,
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Image.asset(
                        'assets/menu/cake.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _list[index].loai,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: textsize - 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
