import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          initialValue: "Thanhcham",
          textInputAction: TextInputAction.next,
          style: const TextStyle(
              fontSize: textsize - 2,
              color: textColor,
              fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            labelText: 'Tên Đăng Nhập',
            labelStyle: TextStyle(
              color: inputTextColor,
              fontSize: textsize - 2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          initialValue: "Thanhcham",
          textInputAction: TextInputAction.next,
          style: const TextStyle(
              fontSize: textsize - 2,
              color: textColor,
              fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            labelText: 'Họ Tên',
            labelStyle: TextStyle(
              color: inputTextColor,
              fontSize: textsize - 2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          initialValue: "abcd@gmail.com",
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(
              fontSize: textsize - 2,
              color: textColor,
              fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
              color: inputTextColor,
              fontSize: textsize - 2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          initialValue: "0123456899",
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: const TextStyle(
              fontSize: textsize - 2,
              color: textColor,
              fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            labelText: 'Số Điện Thoại',
            labelStyle: TextStyle(
              color: inputTextColor,
              fontSize: textsize - 2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            initialValue: "0123456899",
            obscureText: true,
            style: const TextStyle(
                fontSize: textsize,
                color: textColor,
                fontWeight: FontWeight.bold),
            decoration: const InputDecoration(
              labelText: 'Thay đổi mật khẩu',
              labelStyle: TextStyle(
                color: inputTextColor,
                fontSize: textsize - 2,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thaydoimatkhau');
              },
              icon: SvgPicture.asset("assets/icons/chevron-right.svg")),
        ),
      ],
    );
  }
}
