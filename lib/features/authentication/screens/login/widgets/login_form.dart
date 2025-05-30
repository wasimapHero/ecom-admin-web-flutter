
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/authentication/authentication_repository.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/controllers/login_controller.dart';
import 'package:web_by_flutter_ecom_admin/routes/app_routes.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/popups/loaders.dart';
import 'package:web_by_flutter_ecom_admin/utils/validators/validation.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: controller.emailController,
              validator: TValidator.validateEmail,
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields,),
          
            /// Password
            Obx(
              () => TextFormField(
                controller : controller.passwordController,
                validator: (value) => TValidator.validateEmptyText('Password', value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                  icon: controller.hidePassword.value ? Icon(Iconsax.eye_slash) : Icon(Iconsax.eye))
                ),
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
                    Obx(
                      () =>  Checkbox(value: controller.rememberMe.value, onChanged: (value) {
                        controller.rememberMe.value = value!;
                      },),
                    ),
                    Text(TTexts.rememberMe),
                  ],
                ),
          
                /// Forget Password
                TextButton(onPressed: () {
                  Get.toNamed(TRoutes.forgetPassword);
                }, child: Text(TTexts.forgetPassword))
              ],
            ),
            SizedBox(height: TSizes.spaceBtwSections),
          
            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                controller.registerAdmin();
                // to check if authenticated admin and also to check firebase connection
              //  TLoaders.successSnackBar(title: AuthenticationRepository.instance.IsAuthenticated.toString());
              }, child: Text(TTexts.signIn)),
            ),

            
          
          ],
        ),
        ));
  }
}