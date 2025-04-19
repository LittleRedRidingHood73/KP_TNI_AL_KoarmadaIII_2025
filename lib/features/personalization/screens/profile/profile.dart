import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const ({super.key});

  @override
  Widget build(BuildContext context) {
    return const scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profle')),
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace)
          child: Column(
            children: [
              /// profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                  const TCircularImage(image: TImages.user, width: 80, height: 80),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile Info
              TSectionHeading(title: 'Profil Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title:'Name', value: 'Lalu Aldo Wadagraprana', onPressed: () {}),
              TProfileMenu(title:'Username', value: 'wadagraprana', onPressed: () {}),// Row

              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title:'User ID', value: '12345', icon: Iconsax.copy, onPressed: () {}),
              TProfileMenu(title:'E-mail', value: 'lalualdo@gmail.com', onPressed: () {}),// Row
              TProfileMenu(title:'Phone Number', value: '+62-812-3531-0402', onPressed: () {}),
              TProfileMenu(title:'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(title:'Date of Birth', value: '4 April 2003', onPressed: () {}),// Row
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              )

            ],
          )
        ),
      )
    );
  }
}

