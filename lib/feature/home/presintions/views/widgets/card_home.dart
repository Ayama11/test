import 'package:flutter/material.dart';
import 'package:testptc/core/utils/assets.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go ruoter to detils category
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 200, 226, 247),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(255, 127, 199, 218), // لون الحدود
            width: 2, // عرض الحدود
          ),
        ),
        width: 200,
        height: 400,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 70,
                width: 100,
                child: Image.asset(Assets.cardHomeImages)),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Fresh Frutis & Vegetable",
              textAlign: TextAlign.center,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
