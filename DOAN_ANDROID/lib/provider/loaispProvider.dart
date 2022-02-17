import 'dart:convert';

import 'package:doan_cake/models/loai.dart';
import 'package:http/http.dart' as http;

class LoaiSPProvider {
  List<LoaiSanPham> parseLoaiSP(String source) {
    final parsed = json.decode(source).cast<Map<String, dynamic>>();
    return parsed
        .map<LoaiSanPham>((json) => LoaiSanPham.fromJson(json))
        .toList();
  }

  Future<List<LoaiSanPham>> dsSP() async {
    return http
        .get(Uri.parse("http://127.0.0.1:8000/api/sanpham"))
        .then((http.Response response) {
      print(response.body);
      final int statusCode = response.statusCode;
      if (statusCode != 200 || response.body == null) {
        print(response.reasonPhrase);
        throw new Exception("Lỗi load api");
      }

      return parseLoaiSP(response.body);
    });
  }
}
