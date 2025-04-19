import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tni_al/common/widgets/images/circular_image.dart';
import 'package:tni_al/utils/constants/colors.dart';
import 'package:tni_al/utils/constants/image_strings.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.user, width: 60, height: 50, padding: 0),
      title: Text('Shopping with me', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle: Text('surip@gmail.com', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit, color: TColors.white))
    );
  }
}