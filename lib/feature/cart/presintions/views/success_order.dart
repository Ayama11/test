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
              aspectRatio: 1.8,
              child: Image(
                image: AssetImage(Assets.success),
              ),
            ),
          ),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              textAlign: TextAlign.center,
              "Your Order has been accepted",
              style: Styles.textStyle48W400
                  .copyWith(color: Colors.black, fontSize: 28),
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
          SizedBox(height: MediaQuery.of(context).size.height * .18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Button(
                title: "Track Order",
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kSuccessOrder);
                }),
          ),
          TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRouter.kButtomNav);
              },
              child: Text(
                "Back Home",
                style: Styles.textStyle16W400.copyWith(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
