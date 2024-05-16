import 'package:flutter/material.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/feature/home/presintions/views/widgets/card_home.dart';
import 'package:testptc/feature/home/presintions/views/widgets/grid_home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Find Products",
                textAlign: TextAlign.center,
                style: Styles.textStyle16W400
                    .copyWith(fontSize: 20, color: const Color(0xff181725)),
              ),
              const SizedBox(height: 20),
              GridViewhome(
                  itemCount: 8,
                  itemBuilder: (BuildContext, int) {
                    return const CardHome();
                  },
                  crossAxisCount: 2),
            ],
          ),
        ),
      ),
    );
  }
}
