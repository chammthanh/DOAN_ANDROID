import 'package:flutter/material.dart';

class LoaiSP {
  final int id;
  final String image, loai, pushname;
  final Color mau;
  LoaiSP({
    required this.id,
    required this.image,
    required this.loai,
    required this.mau,
    required this.pushname,
  });
}

List<LoaiSP> loaisp = [
  LoaiSP(
      id: 1,
      image: "assets/menu/cake.png",
      loai: "Bánh Kem",
      mau:  const Color.fromRGBO(250, 227, 156, 0.3),
      pushname: "/banhkem"),
  LoaiSP(
      id: 2,
      image: "assets/menu/bread.png",
      loai: "Bánh Mì",
      mau: const Color.fromRGBO(204, 218, 156, 0.3),
      pushname: "/banhmi"),
  LoaiSP(
      id: 3,
      image: "assets/menu/cookies.png",
      loai: "Bánh Quy",
      mau: const Color.fromRGBO(237, 225, 222, 0.3),
      pushname: "/banhquy"),
  LoaiSP(
      id: 4,
      image: "assets/menu/donut.png",
      loai: "Donut",
      mau: const Color.fromRGBO(218, 199, 172, 0.3),
      pushname: "/donut"),
  LoaiSP(
      id: 5,
      image: "assets/menu/pudding.png",
      loai: "Tráng Miệng",
      mau: const Color.fromRGBO(229, 142, 97, 0.3),
      pushname: "/trangmieng")
];
