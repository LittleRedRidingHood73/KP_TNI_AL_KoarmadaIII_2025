import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key, this.width = 400, this.height = 400, this.radius = 400, this.child, this.padding = 0, this.backgroundColor = TColors.textWhite, this.margin,
  });

  final double? width, height;
  final double radius, padding;
  final Widget? child;
  final EdgeInsets? margin;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor
      ),
      child: child,
    );
  }
}