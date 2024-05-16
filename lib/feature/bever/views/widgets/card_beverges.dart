import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/icons.dart';

class CardBever extends StatelessWidget {
  const CardBever({super.key});
  final String s = "\$";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go ruoter to detils category
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(255, 192, 190, 190),
            width: 2,
          ),
        ),
        width: 200,
        height: 600,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: SizedBox(
                      height: 70, width: 100, child: Image.asset(Assets.cola))),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Coca Cola ",
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Text(
                "325ml, Price",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(fontSize: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$s 4.99",
                    style: Styles.textStyle16W400.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const CircularIcons(
                      height: 40,
                      width: 40,
                      size: 26,
                      color: Colors.white,
                      backgrounColor: Consts.kPraimaryColor,
                      icon: Iconsax.add)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
