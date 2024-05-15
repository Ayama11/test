import 'package:flutter/material.dart';
import 'package:testptc/feature/home/presintions/views/widgets/grid_home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "Find Products",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          GridViewhome(
              itemCount: 6,
              itemBuilder: (BuildContext, int) {
                return null;
              },
              crossAxisCount: 2),
        ],
      ),
    );
  }
}
