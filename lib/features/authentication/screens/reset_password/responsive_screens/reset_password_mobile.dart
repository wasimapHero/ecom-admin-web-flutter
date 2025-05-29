import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/reset_password/widgets/reset_password_widget.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class ResetPasswordMobileScreen extends StatelessWidget {
  const ResetPasswordMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: TSizes.defaultSpace, right: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
          child: ResetPasswordWidget(email: email)
        ),
      ),
    );
  }
}
