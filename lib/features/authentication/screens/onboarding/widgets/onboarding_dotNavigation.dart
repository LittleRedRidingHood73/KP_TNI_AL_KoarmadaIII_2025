
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/onboarding/onboarding.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: THelperFunctions.screenWidth() < 500 ? TSizes.defaultSpace : THelperFunctions.screenWidth() / 5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigateClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 10,
        ),
      ),
    );
  }
}