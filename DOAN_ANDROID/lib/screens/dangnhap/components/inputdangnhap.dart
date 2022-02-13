import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'dangnhapProvider.dart';

class InputDangNhap extends StatefulWidget {
  const InputDangNhap({Key? key}) : super(key: key);
  @override
  State<InputDangNhap> createState() => _InputState();
}

class _InputState extends State<InputDangNhap> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool pass = true;
  dangnhapProvider _auth = new dangnhapProvider();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            controller: _email,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
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
            controller: _password,
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
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Quên mật khẩu ?",
                style: TextStyle(
                    color: subTextColor,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.maxFinite,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/trangchu');
              if (_email.text == "" || _password.text == "") {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: const Text("Chua nhap email hoac mat khau"),
                      title: Row(
                        children: const [
                          Icon(
                            Icons.warning,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                _auth.dangnhap(context, _email.text, _password.text);
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(priColor),
            ),
            child: const Text(
              'Đăng Nhập',
              style: TextStyle(
                color: textColor,
                fontSize: textsize - 6,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
