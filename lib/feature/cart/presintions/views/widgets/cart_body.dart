import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testptc/core/utils/app_ruoter.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/core/widgets/button.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/custom_card.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/icons.dart';
import 'package:testptc/feature/home/presintions/views/widgets/grid_home.dart';
import 'package:go_router/go_router.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});
  final String s = "\$";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
              itemCount: 3,
              itemBuilder: (BuildContext, int) {
                return CustomCard(s: s);
              },
              crossAxisCount: 1),
          const SizedBox(
            height: 10,
          ),
          Button(
              title: "Go to Checkout",
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.kSuccessOrder);
              })
        ],
      ),
    ));
  }
}
