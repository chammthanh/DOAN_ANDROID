class DonMua {
  final String thanhphan;
  DonMua({
    required this.thanhphan,
  });
}

List<DonMua> donmua = [
  DonMua(thanhphan: "Chờ xác nhận"),
  DonMua(thanhphan: "Đóng gói"),
  DonMua(thanhphan: "Đang vận chuyển"),
  DonMua(thanhphan: "Hoàn Thành"),
  DonMua(thanhphan: "Đã Hủy"),
];
