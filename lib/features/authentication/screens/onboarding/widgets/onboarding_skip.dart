import 'package:flutter/material.dart';
import 'package:tni_al/features/authentication/controllers/onboarding/onboarding.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: Text('Skip')),
    );
  }
}