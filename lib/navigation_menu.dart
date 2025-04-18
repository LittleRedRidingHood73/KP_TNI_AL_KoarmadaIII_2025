import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/features/personalization/screens/settings/settings.dart';
import 'package:tni_al/features/shop/screens/home/home.dart';
import 'package:tni_al/features/shop/screens/store/store.dart';
import 'package:tni_al/features/shop/screens/wishlist/wishlist.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar (
          height: 80,
            elevation: 20,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            backgroundColor: darkMode ? TColors.black : TColors.black.withAlpha(10),
            indicatorColor: darkMode ? TColors.white.withAlpha(10) : TColors.black.withAlpha(10),
            
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx <int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), const StoreScreen(), const FavouriteScreen(), const SettingsScreen()];
}