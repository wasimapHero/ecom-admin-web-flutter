
import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/image_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Image(image: AssetImage(TImages.darkAppLogoL), width: 100, height: 100,),
          SizedBox(height: TSizes.spaceBtwSections,),
          Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
          SizedBox(height: TSizes.sm,),
          Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
    );
  }
}
