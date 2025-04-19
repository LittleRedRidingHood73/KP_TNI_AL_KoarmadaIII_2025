import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/common/list_tiles/settings_menu_tile.dart';
import 'package:tni_al/common/list_tiles/user_profile_tile.dart';
import 'package:tni_al/common/widgets/appbar/appbar.dart';
import 'package:tni_al/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tni_al/common/widgets/images/circular_image.dart';
import 'package:tni_al/common/widgets/texts/section_heading.dart';
import 'package:tni_al/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/constants/image_strings.dart';
import 'package:tni_al/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            TPrimaryHeaderContainer(child: Column(
              children: [
                TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                // user profile card
                TUserProfile(),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
            ),

            // body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set Shopping delivery address'),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Set Shopping delivery address'),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'Set Shopping delivery address'),
                  TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Set Shopping delivery address'),
                  TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'Set Shopping delivery address'),
                  TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set Shopping delivery address'),
                  TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Set Shopping delivery address'),

                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload  data to your database'),
                  TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Download data from your database', trailing: Switch(value: false, onChanged: (value){})),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Download data from your database', trailing: Switch(value: true, onChanged: (value){})),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Download data from your database', trailing: Switch(value: false, onChanged: (value){})),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                  ),
                const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),        
          ],
        ),
      )
    );
  }
}
