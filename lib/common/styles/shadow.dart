import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(10),
    blurRadius: 50.0,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(10),
    blurRadius: 50.0,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
