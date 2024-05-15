import 'package:flutter/material.dart';
import 'package:testptc/feature/home/presintions/views/home_view.dart';

void main() {
  runApp(const TestPtc());
}

class TestPtc extends StatelessWidget {
  const TestPtc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
