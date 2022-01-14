import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'dangkyProvider.dart';

class InputDangKy extends StatefulWidget {
  const InputDangKy({Key? key}) : super(key: key);
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<InputDangKy> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _ten = TextEditingController();
  final dangkyProvider _auth = new dangkyProvider();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            controller: _username,
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
            controller: _email,
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
            controller: _ten,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Họ Tên',
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
            controller: _password,
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
        // Container(
        //   child: TextField(
        //     keyboardType: TextInputType.visiblePassword,
        //     textInputAction: TextInputAction.done,
        //     decoration: InputDecoration(
        //       labelText: 'Xác nhận lại mật khẩu',
        //       labelStyle: const TextStyle(
        //           color: inputTextColor, fontSize: textsize - 8),
        //       fillColor: Colors.white,
        //       filled: true,
        //       border: const OutlineInputBorder(),
        //       enabledBorder: const OutlineInputBorder(
        //         borderSide: BorderSide(color: Colors.white),
        //       ),
        //       focusedBorder: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.grey.shade100)),
        //     ),
        //   ),
        //   decoration: const BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: shadowColor,
        //         blurRadius: 10,
        //         offset: Offset(0, 4),
        //       ),
        //     ],
        //   ),
        // ),

        const SizedBox(height: 20),
        SizedBox(
          width: double.maxFinite,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/trangchu');
              if (_email.text == "" ||
                  _password.text == "" ||
                  _ten.text == "") {
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
                _auth.dangky(context,_username.text, _email.text, _password.text, _ten.text);
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(priColor),
            ),
            child: const Text(
              'Đăng Ký',
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
