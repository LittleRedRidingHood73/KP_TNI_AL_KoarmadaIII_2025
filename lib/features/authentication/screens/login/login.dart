import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/common/styles/spacing_styles.dart';
import 'package:tni_al/features/authentication/screens/login/widgets/login_form.dart';
import 'package:tni_al/features/authentication/screens/login/widgets/login_header.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/constants/image_strings.dart';
import 'package:tni_al/utils/constants/sizes.dart';
import 'package:tni_al/utils/constants/text_strings.dart';
import 'package:tni_al/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TLoginHeader(),

              TLoginForm(),

              TFormDivider(dividerText: TTexts.orSignInWith),

              const SizedBox(height: TSizes.spaceBtwSections,),

              const TSocialButtons(),


            ],
          ),
        ),
      ),
    );
  }
}