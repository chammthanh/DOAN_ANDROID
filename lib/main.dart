import 'package:doan_cake/screens/dangky/dangky.dart';
import 'package:doan_cake/screens/dangnhap/dangnhap.dart';
import 'package:doan_cake/screens/giohang/giohang.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/danhsachdiachi.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/themdiachi/themdiachi.dart';
import 'package:doan_cake/screens/hoso/hoso.dart';
import 'package:doan_cake/screens/hoso/lichsudonhang/lichsudonhang.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/matkhau/matkhau.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/thongtincanhan.dart';
import 'package:doan_cake/screens/trangchu/trangchu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cake',
      initialRoute: '/',
      routes: {
        '/': (context) => const DangNhap(),
        '/dangky': (context) => const DangKy(),
        '/trangchu': (context) => const TrangChu(),
        '/hoso': (context) => const HoSo(),
        '/thongtincanhan': (context) => const ThongTin(),
        '/danhsachdiachi': (context) => const DiaChi(),
        '/thaydoimatkhau': (context) => const MatKhau(),
        '/themdiachi': (context) => const ThemDiaChi(),
        '/lichsudonhang': (context) => const LSDonHang(),
        '/giohang': (context) => const GioHang(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
