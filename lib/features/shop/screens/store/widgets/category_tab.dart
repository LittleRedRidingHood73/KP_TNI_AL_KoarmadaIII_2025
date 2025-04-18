import 'package:flutter/material.dart';
import 'package:tni_al/common/widgets/brands/brand_show_case.dart';
import 'package:tni_al/common/widgets/layouts/grid_layout.dart';
import 'package:tni_al/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:tni_al/common/widgets/texts/section_heading.dart';
import 'package:tni_al/utils/constants/image_strings.dart';
import 'package:tni_al/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
          // Brands
          TBrandShowCase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1]),
      
          // products
          TSectionHeading(title: "You might like", showActionButton: true, onPressed: (){}),
          const SizedBox(height: TSizes.spaceBtwItems),
      
          TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
          const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
      ],
    );
  }
}