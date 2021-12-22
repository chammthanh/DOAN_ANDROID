import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class InputDangNhap extends StatefulWidget {
  const InputDangNhap({Key? key}) : super(key: key);
  @override
  State<InputDangNhap> createState() => _InputState();
}

class _InputState extends State<InputDangNhap> {
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Tên Đăng Nhập',
              labelStyle:
                  TextStyle(color: inputTextColor, fontSize: textsize - 8),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: inputTextColor)),
            ),
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscureText: pass,
            decoration: InputDecoration(
              labelText: 'Mật Khẩu',
              labelStyle: const TextStyle(
                  color: inputTextColor, fontSize: textsize - 8),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (pass) {
                        pass = false;
                      } else {
                        pass = true;
                      }
                    });
                  },
                  icon: Icon(pass == true
                      ? Icons.visibility_off
                      : Icons.remove_red_eye)),
              // suffix:
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: subTextColor)),
            ),
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
