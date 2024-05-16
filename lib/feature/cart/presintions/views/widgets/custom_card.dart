import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/icons.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.s,
  });

  final String s;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        //margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Assets.cart, height: 64, width: 70),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Organic Bananas",
                    style: Styles.textStyle16W400.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "1kg, Price",
                    style: Styles.textStyle16W400.copyWith(
                        color: const Color.fromARGB(255, 107, 107, 107)),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularIcons(
                          height: 40,
                          width: 40,
                          size: 24,
                          icon: Iconsax.add,
                          color: Consts.kPraimaryColor,
                          backgrounColor: Color.fromARGB(255, 238, 236, 236),
                        ),
                        SizedBox(width: 10),
                        Text("5"),
                        SizedBox(width: 10),
                        CircularIcons(
                          backgrounColor: Color.fromARGB(255, 238, 236, 236),
                          width: 40,
                          height: 40,
                          size: 24,
                          color: Colors.grey,
                          icon: Iconsax.minus,
                        ),
                      ]),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.close),
                  const SizedBox(height: 45),
                  Text(
                    "2.9 $s",
                    style: Styles.textStyle16W400.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
