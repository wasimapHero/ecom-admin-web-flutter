import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/resetPassord_template.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/reset_password/widgets/reset_password_widget.dart';


class ResetPasswordDesktopTabletScreen extends StatelessWidget {
  const ResetPasswordDesktopTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailFromArguments = Get.arguments ?? '';
    final email = Get.parameters['email'] ?? '';

    return SingleChildScrollView(
        child: TResetPasswordTemplate(
      child: ResetPasswordWidget(email: email),
    ));
  }
}

