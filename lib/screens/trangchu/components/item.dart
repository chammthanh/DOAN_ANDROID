import 'package:doan_cake/constraint.dart';
import 'package:doan_cake/widgets/heart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemProduct extends StatefulWidget {
  const ItemProduct({Key? key}) : super(key: key);
  @override
  _ItemProductState createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: 5,
              offset: Offset(3, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/product1.png',
              width: 165,
              height: 165,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 120,
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, '/chitietsanpham');
                        },
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text(
                          'Bánh sinh nhật có chữ HAPPY BIRTHDAY màu xanh navy',
                          style: TextStyle(
                              color: textColor,
                              fontSize: textsize - 8,
                              fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                        subtitle: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 3, bottom: 7),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh ex. Fusce quis sodales arcu. Nullam mattis tristique euismod. ',
                                style: TextStyle(
                                  fontSize: textsize - 10,
                                  color: subTextColor,
                                ),
                                maxLines: 1,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '120.000đ',
                                style: TextStyle(
                                    fontSize: textsize - 2,
                                    color: priceColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ClickHeart(),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: seColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/icons/shopping-cart.svg",
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
