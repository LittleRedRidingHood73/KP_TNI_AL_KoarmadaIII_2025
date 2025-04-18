import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tni_al/features/authentication/controllers/onboarding/onboarding.dart';
import 'package:tni_al/features/authentication/screens/onboarding/widgets/onboarding_dotNavigation.dart';
import 'package:tni_al/features/authentication/screens/onboarding/widgets/onboarding_nextButton.dart';
import 'package:tni_al/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:tni_al/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/constants/enums.dart';
import 'package:tni_al/utils/constants/image_strings.dart';
import 'package:tni_al/utils/constants/text_strings.dart';
import 'package:tni_al/utils/device/device_utility.dart';
import 'package:tni_al/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnboardingSkip(),

          const OnboardingDotNavigation(),

          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
