class LoaiSP {
  final int id;
  final String image, loai, pushname;
  LoaiSP({
    required this.id,
    required this.image,
    required this.loai,
    required this.pushname,
  });
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
      id: 4, image: "assets/menu/donut.png", loai: "Donut", pushname: "/donut"),
  LoaiSP(
      id: 5,
      image: "assets/menu/pudding.png",
      loai: "Tráng Miệng",
      pushname: "/trangmieng")
];
