import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/features/authentication/controllers/onboarding/onboarding.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: THelperFunctions.screenWidth() < 500 ? TSizes.defaultSpace : THelperFunctions.screenWidth() / 5,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_1, color: TColors.light),
      ),
    );
  }
}