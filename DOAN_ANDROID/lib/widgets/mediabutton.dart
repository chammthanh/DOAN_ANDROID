import 'package:flutter/material.dart';

class MediaButton extends StatefulWidget {
  const MediaButton({Key? key}) : super(key: key);
  @override
  _MediaButtonState createState() => _MediaButtonState();
}

class _MediaButtonState extends State<MediaButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 193, 7, 0.06),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              "assets/images/google.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(59, 89, 152, 0.06),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              "assets/images/facebook.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(85, 172, 238, 0.06),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              "assets/images/twitter.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
