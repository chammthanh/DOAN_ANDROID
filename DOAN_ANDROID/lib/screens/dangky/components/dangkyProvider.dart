import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class dangkyProvider {
  Future<void> dangky(
      BuildContext context,String username, String email, String password, String ten) async {
    String url = 'http://10.0.2.2:8000/api/register';
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {'username':username,'email': email, 'password': password, 'ten': ten};
    var response = await http.post(Uri.parse(url),
        headers: <String, String>{'Accept': 'application/json'}, body: body);
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print('response status:${response.statusCode}');
      print('response status:${response.body}');
      sharedPreferences.setString("token", "abc");
    } else {
      print('sai bét');
    }
  }
}
