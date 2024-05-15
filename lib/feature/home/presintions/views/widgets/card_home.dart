import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      color: const Color.fromARGB(255, 165, 210, 247),
      width: 200,
      height: 400,
      child: Column(
        children: [
          Image.asset(""),
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
