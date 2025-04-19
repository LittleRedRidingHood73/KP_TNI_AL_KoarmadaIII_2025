import 'package:flutter/material.dart';
import 'package:tni_al/utils/constants/colors.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrough = false,
    this.textColor = TColors.primary,
  });

  final Color textColor;
  final String currencySign, price;
  final int maxLines;
  final bool isLarge, lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style:
          isLarge
              ? Theme.of(context).textTheme.headlineMedium!.apply(color: textColor, decoration: lineThrough ? TextDecoration.lineThrough : null,)
              : Theme.of(context).textTheme.titleLarge!.apply(color: textColor, decoration: lineThrough ? TextDecoration.lineThrough : null,),
    );
  }
}
