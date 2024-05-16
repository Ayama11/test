import 'package:flutter/material.dart';
import 'package:testptc/core/utils/consts.dart';
import 'package:testptc/feature/cart/presintions/views/cart_view.dart';
import 'package:testptc/feature/cart/presintions/views/search_view.dart';
import 'package:testptc/feature/bever/views/beverages_view.dart';
import 'package:testptc/feature/home/presintions/views/home_view.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class NavigationMuneBottom extends StatelessWidget {
  const NavigationMuneBottom({super.key});
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          indicatorColor: const Color.fromARGB(255, 185, 243, 206),
          backgroundColor: Colors.white,
          elevation: 0,
          height: 65,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_cart),
              //shop_add
              label: "cart",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: "favort",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.search_normal),
              label: "search",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.viewScreen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  final viewScreen = [
    const HomeView(),
    const CartView(),
    const BeveragesView(),
    const SearchView(),
  ];
}
