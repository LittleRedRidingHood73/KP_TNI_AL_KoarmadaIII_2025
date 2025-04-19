import 'package:tni_al/utils/helpers/helper_functions.dart';

class TProductImagesSlider extends StatelessWidget {
  const TProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: const Stack(
          children: [

            /// Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(TImages.productImage5))),
              ),
            ), // SizedBox

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.productImage3,
                  ),
                ), // ListView.separated
              ), // SizedBox
            ), // Positioned

            /// Appbar Icons
            TAppBar(
              showBackArrow: true,
              actions: [TcircularIcon(icon: Iconsax.hegrt5, color: Colors.red)],
            )
          ],
        ),
      ),
    );
  }
}
