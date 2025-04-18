import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/common/widgets/login_signup/form_divider.dart';
import 'package:tni_al/common/widgets/login_signup/social_buttons.dart';
import 'package:tni_al/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/constants/sizes.dart';
import 'package:tni_al/utils/constants/text_strings.dart';
import 'package:tni_al/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections),

              TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),
              
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),

              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
