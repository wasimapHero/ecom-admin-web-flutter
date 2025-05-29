import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/forget_password/widgets/header_form.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/widgets/login_form.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/widgets/login_header.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class ForgetPasswordMobileScreen extends StatelessWidget {
  const ForgetPasswordMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: HeaderAndForm()
          
        ),
      ),
    );
  }
}
