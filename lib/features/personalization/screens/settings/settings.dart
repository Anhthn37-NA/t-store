import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store/common/widgets/appbar/app_bar.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--Header
            TPrimaryHeaderContainer(
              child: Column(
                  children: [
                    ///--AppBar
                    TAppBar(
                      title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                    ///--User Profile Card
                    ListTile(
                      leading: TCircularImage(image: TImages.user,),
                      title: Text('Coding with Nam Anh', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
                      subtitle: Text('namanh29072001@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  ],
              ),
            ),

            ///--Body
          ],
        ),
      ),
    );
  }
}
