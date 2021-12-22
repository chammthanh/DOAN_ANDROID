import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';

class InputDangKy extends StatefulWidget {
  const InputDangKy({Key? key}) : super(key: key);
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<InputDangKy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Tên Đăng Nhập',
              labelStyle: const TextStyle(
                  color: inputTextColor, fontSize: textsize - 8),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100)),
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
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: const TextStyle(
                  color: inputTextColor, fontSize: textsize - 8),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100)),
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
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Số điện thoại',
              labelStyle: const TextStyle(
                  color: inputTextColor, fontSize: textsize - 8),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100)),
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
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              labelStyle: const TextStyle(
                  color: inputTextColor, fontSize: textsize - 8),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100)),
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
            decoration: InputDecoration(
              labelText: 'Xác nhận lại mật khẩu',
              labelStyle: const TextStyle(
                  color: inputTextColor, fontSize: textsize - 8),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100)),
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
