import 'package:flutter/material.dart';
import 'package:testptc/core/utils/app_ruoter.dart';
import 'package:testptc/core/utils/assets.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/core/widgets/button.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.onBording,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome              to our store',
                  style: Styles.textStyle48W400,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Get your groceries in as fast as one hour',
                  style: Styles.textStyle16W400,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Button(
                    title: "Get Started",
                    onTap: () {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kButtomNav);
                    }),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
