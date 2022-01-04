import 'package:doan_cake/pagetest.dart';
import 'package:doan_cake/screens/banhkem/banhkem.dart';
import 'package:doan_cake/screens/banhmi/banhmi.dart';
import 'package:doan_cake/screens/banhquy/banhquy.dart';
import 'package:doan_cake/screens/chitietsanpham/chitietsanpham.dart';
import 'package:doan_cake/screens/dangky/dangky.dart';
import 'package:doan_cake/screens/dangnhap/dangnhap.dart';
import 'package:doan_cake/screens/danhgia/danhgia.dart';
import 'package:doan_cake/screens/donut/donut.dart';
import 'package:doan_cake/screens/giohang/giohang.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/danhsachdiachi.dart';
import 'package:doan_cake/screens/hoso/danhsachdiachi/themdiachi/themdiachi.dart';
import 'package:doan_cake/screens/hoso/hoso.dart';
import 'package:doan_cake/screens/hoso/lichsudonhang/lichsudonhang.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/matkhau/matkhau.dart';
import 'package:doan_cake/screens/hoso/thongtincanhan/thongtincanhan.dart';
import 'package:doan_cake/screens/thanhtoan/hoanthanh/hoanthanh.dart';
import 'package:doan_cake/screens/thanhtoan/thanhtoan.dart';
import 'package:doan_cake/screens/trangchu/trangchu.dart';
import 'package:doan_cake/screens/trangmieng/banhmi.dart';
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
      initialRoute: '/hoanthanh',
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
        '/banhkem': (context) => const BanhKemPage(),
        '/banhmi': (context) => const BanhMiPage(),
        '/banhquy': (context) => const BanhQuyPage(),
        '/donut': (context) => const DonutPage(),
        '/trangmieng': (context) => const TrangMiengPage(),
        '/danhgia': (context) => const DanhGiaPage(),
        '/chitietsanpham': (context) => const ChiTietSP(),
        '/thanhtoan': (context) => const ThanhToanPage(),
        '/hoanthanh': (context) => const HoanThanh(),
        '/test': (context) => const ChiTietSP(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
