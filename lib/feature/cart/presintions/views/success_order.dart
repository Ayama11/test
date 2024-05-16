import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:testptc/core/utils/app_ruoter.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/core/widgets/button.dart';

class SuccessOrder extends StatelessWidget {
  const SuccessOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 118),
            child: AspectRatio(
              aspectRatio: 2.2,
              child: Image(
                image: AssetImage(Assets.success),
              ),
            ),
          ),
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              textAlign: TextAlign.center,
              "Your Order has beenaccepted",
              style: Styles.textStyle16W400,
            ),
          ),
          const SizedBox(height: 36),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              textAlign: TextAlign.center,
              "Please login now and enjoy using Voyago",
              //    style: Styles.textStyle18W400.copyWith(fontSize: 20),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Button(
                title: "Track Order",
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kSuccessOrder);
                }),
          ),
        ],
      ),
    );
  }
}
