import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/common/widgets/appbar/appbar.dart';
import 'package:tni_al/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:tni_al/common/widgets/layouts/grid_layout.dart';
import 'package:tni_al/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:tni_al/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tni_al/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tni_al/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/constants/image_strings.dart';
import 'package:tni_al/utils/constants/sizes.dart';
import 'package:tni_al/utils/constants/text_strings.dart';
import 'package:tni_al/utils/device/device_utility.dart';
import 'package:tni_al/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../common/widgets/images/rounded_image.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSearchContainer(text: 'Search in store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: TSizes.defaultSpace,
                      right: TSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(title: 'Popular Products', textColor: TColors.black, onPressed: (){}),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
