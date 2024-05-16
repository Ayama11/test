import 'package:flutter/material.dart';
import 'package:testptc/feature/bever/views/widgets/beverages_body.dart';

class BeveragesView extends StatelessWidget {
  const BeveragesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BeveragesBody(),
    );
  }
}
