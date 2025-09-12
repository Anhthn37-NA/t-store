import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.spaceBtwItems),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TCircularImage(image: TImages.user, padding: 0),
          const SizedBox(width: TSizes.spaceBtwItems),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coding with Nam Anh',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall!.apply(color: TColors.white),
                ),
                Text(
                  'namanh29072001@gmail.com',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.apply(color: TColors.white),
                  maxLines: 1,
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.edit, color: TColors.white),
          ),
        ],
      ),
    );
  }
}
