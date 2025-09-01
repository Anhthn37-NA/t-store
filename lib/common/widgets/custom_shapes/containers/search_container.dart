import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackGround = true,this.showBorder = true, this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackGround,showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace,
        ),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackGround ? dark ? TColors.dark : TColors.light: Colors.transparent,
            borderRadius: showBorder ? BorderRadius.circular(
              TSizes.cardRadiusLg,
            ) : null,
            border: Border.all(color: TColors.grey),
          ),
          child: Row(
            children: [
              Icon(icon, color: TColors.grey),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(text,style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}