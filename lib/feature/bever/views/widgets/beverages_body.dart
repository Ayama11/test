import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/feature/bever/views/widgets/app_bar.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/icons.dart';

class BeveragesBody extends StatelessWidget {
  const BeveragesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          AppBarW(
            backgroundColor: Colors.transparent,
            titel: Center(
              child: Text(
                "Beverages",
                textAlign: TextAlign.center,
                style: Styles.textStyle16W400
                    .copyWith(fontSize: 20, color: const Color(0xff181725)),
              ),
            ),
            showBackArrow: true,
            actions: const [
              CircularIcons(
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
    );
  }
}

class CardBeverages extends StatelessWidget {
  const CardBeverages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          AppBarW(
            backgroundColor: Colors.transparent,
            titel: Text(
              "Beverages",
              textAlign: TextAlign.center,
              style: Styles.textStyle16W400
                  .copyWith(fontSize: 20, color: const Color(0xff181725)),
            ),
          )
        ],
      ),
    );
  }
}
