import 'package:flutter/material.dart';
import 'package:testptc/core/utils/consts.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

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
        const SizedBox(height: 32),
        Card(
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(),
            )),
      ],
    ));
  }
}
