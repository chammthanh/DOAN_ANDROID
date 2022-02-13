import 'dart:convert';

List<Loai> loaiFromJson(String str) =>
    List<Loai>.from(json.decode(str).map((x) => Loai.fromJson((x))));

class Loai {
  late int id;
  late String loaisp;
  Loai({
    required this.id,
    required this.loaisp,
  });
  factory Loai.fromJson(Map<String, dynamic> json) => Loai(
        id: json["id"],
        loaisp: json["loaisp"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "loaisp": loaisp,
      };
}
