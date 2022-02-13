import 'dart:convert';

import 'package:doan_cake/models/loai.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class TestApi extends StatefulWidget {
  TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HttpService {
  final String url = 'http://10.0.2.2:8000/loai-san-pham';
  Future<List<Loai>> getLoai() async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Loai> typepro = body
          .map(
            (dynamic item) => Loai.fromJson(item),
          )
          .toList();
      return typepro;
    } else {
      throw "failed";
    }
  }
}
