
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/image_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';


class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Header
        IconButton(
            onPressed: () => Get.offAllNamed(TRoutes.login),
            icon: Icon(CupertinoIcons.clear)),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        // column center
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                
        // Image
        Image(
          image: AssetImage(TImages.deliveredEmailIllustration),
          width: 300,
          height: 300,
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
    
        // Title & Subtitle
        Text(
          TTexts.changeYourPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(
          email, textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(
          TTexts.changeYourPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(height: TSizes.spaceBtwSections),
    
        // Buttons
        SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () => Get.back(),
            child: Text(TTexts.done)),
      ),
      SizedBox(height: TSizes.spaceBtwSections),
      SizedBox(
        width: double.infinity,
        child: TextButton(onPressed: () {
          
        }, child: Text(TTexts.resendEmail))
      ),
          ],
        )
      ],
    );
  }
}
