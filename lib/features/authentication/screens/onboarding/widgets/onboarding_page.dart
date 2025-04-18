import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    print('screen width is ${THelperFunctions.screenWidth()}');
    print('screen height is ${THelperFunctions.screenHeight()}');
    return Padding(
      padding: const EdgeInsets.all(TSizes.spaceBtwInputFields),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() < 500 ? THelperFunctions.screenWidth() * 0.8 : THelperFunctions.screenWidth() * 0.6,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}