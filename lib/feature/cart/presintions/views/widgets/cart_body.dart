import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/custom_card.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/icons.dart';
import 'package:testptc/feature/home/presintions/views/widgets/grid_home.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});
  final String s = "\$";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          "My Cart",
          style: Styles.textStyle16W400
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        GridViewhome(
            itemCount: 8,
            itemBuilder: (BuildContext, int) {
              return CustomCard(s: s);
            },
            crossAxisCount: 1),
      ],
    ));
  }
}
