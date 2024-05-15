import 'package:flutter/material.dart';
import 'package:testptc/feature/cart/presintions/views/widgets/cart_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartBody(),
    );
  }
}
