import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/forgetPassword_template.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/forget_password/widgets/header_form.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';

class ForgetPasswordDesktopTabletScreen extends StatelessWidget {
  const ForgetPasswordDesktopTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: TForgetPasswordTemplate(
      child: HeaderAndForm(),
    ));
  }
}
