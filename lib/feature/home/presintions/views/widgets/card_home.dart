import 'package:flutter/material.dart';
import 'package:testptc/core/utils/assets.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 165, 210, 247),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color: const Color.fromARGB(255, 165, 210, 247),
      ),
      width: 200,
      height: 400,
      child: Column(
        children: [
          Image.asset(Assets.cardHomeImages),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Fresh Frutis & Vegetable",
            textAlign: TextAlign.center,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
