
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields,),
          
            /// Password
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(onPressed: () {
                  
                }, icon: Icon(Iconsax.eye_slash))
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields / 2,),
          
            /// Remember Me & Forget Password
            Row(
              children: [
                // Remember me
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(value: true, onChanged: (value) {
                      
                    },),
                    Text(TTexts.rememberMe),
                  ],
                ),
          
                /// Forget Password
                TextButton(onPressed: () {
                  
                }, child: Text(TTexts.forgetPassword))
              ],
            ),
            SizedBox(height: TSizes.spaceBtwSections),
          
            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                
              }, child: Text(TTexts.signIn)),
            )
          
          ],
        ),
        ));
  }
}