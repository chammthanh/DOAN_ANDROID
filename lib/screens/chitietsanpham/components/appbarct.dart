import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCT extends StatelessWidget {
  const AppBarCT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(100))),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              iconSize: 40,
              icon: SvgPicture.asset("assets/icons/chevron-left.svg"),
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  iconSize: 40,
                  icon: SvgPicture.asset("assets/icons/search.svg"),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/giohang");
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  iconSize: 40,
                  icon: SvgPicture.asset("assets/icons/shopping-cart.svg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
