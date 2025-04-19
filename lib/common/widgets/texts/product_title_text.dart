import 'package:flutter/material.dart';
import 'package:tni_al/utils/constants/colors.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
    this.textColor = TColors.black,
  });

  final Color textColor;
  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          smallSize
              ? Theme.of(context).textTheme.labelLarge!.apply(color: textColor)
              : Theme.of(context).textTheme.titleSmall!.apply(color: textColor),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
