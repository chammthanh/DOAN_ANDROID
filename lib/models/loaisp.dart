import 'package:flutter/material.dart';

class LoaiSP {
  final int id;
  final String image, loai, pushname;
  LoaiSP({
    required this.id,
    required this.image,
    required this.loai,
    required this.pushname,
  });
  // LoaiSP.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       image = json['image'],
  //       loai = json['loai'];
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['image'] = image;
  //   data['loai'] = loai;
  //   return data;
  // }

}

List<LoaiSP> loaisp = [
  LoaiSP(
      id: 1,
      image: "assets/menu/cake.png",
      loai: "Bánh Kem",
      pushname: "/banhkem"),
  LoaiSP(
      id: 2,
      image: "assets/menu/bread.png",
      loai: "Bánh Mì",
      pushname: "/banhmi"),
  LoaiSP(
      id: 3,
      image: "assets/menu/cookies.png",
      loai: "Bánh Quy",
      pushname: "/banhquy"),
  LoaiSP(
      id: 4,
      image: "assets/menu/donut.png",
      loai: "Donut",
      pushname: "/dounut"),
  LoaiSP(
      id: 5,
      image: "assets/menu/pudding.png",
      loai: "Tráng Miệng",
      pushname: "/trangmieng")
];
