import 'package:flutter/material.dart';

Widget btnmedia = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 35, top: 7, right: 35, bottom: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                blurRadius: 5,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/google.png",
            width: 30,
            height: 30,
          ),
        )
      ],
    ),
    Row(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 35, top: 7, right: 35, bottom: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                blurRadius: 5,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/facebook.png",
            width: 30,
            height: 30,
          ),
        )
      ],
    ),
    Row(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 35, top: 7, right: 35, bottom: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                blurRadius: 5,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/twitter.png",
            width: 30,
            height: 30,
          ),
        )
      ],
    )
  ],
);
