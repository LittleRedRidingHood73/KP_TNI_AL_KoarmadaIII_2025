
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.iconColor, required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Iconsax.shopping_bag, color: TColors.white,)),
        Positioned(
          right: 0,

          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: TColors.black.withAlpha(70),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text('4', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.7),),
            ),
          ),
        )
      ],
    );
  }
}