class LoaiSanPham {
  int id;
  String loai;
  LoaiSanPham(
    this.id,
    this.loai,
  );
  LoaiSanPham.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        loai = json['loai'];
}
