import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class dangnhapProvider {
  Future<void> dangnhap(
      BuildContext context, String email, String password) async {
    String url = 'http://10.0.2.2:8000/api/login';
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {'email': email, 'password': password};
    var response = await http.post(Uri.parse(url),
        headers: <String, String>{'Accept': 'application/json'}, body: body);
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print('response status:${response.statusCode}');
      print('response status:${response.body}');
      sharedPreferences.setString("token", jsonResponse['access_token']);
      Navigator.pushNamed(context, '/trangchu');
    } else {
      print('response status:${response.body}');
    }
  }
}
