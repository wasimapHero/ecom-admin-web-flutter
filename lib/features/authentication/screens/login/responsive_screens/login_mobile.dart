import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/widgets/login_form.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/widgets/login_header.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              TLoginHeader(),

              // Form
              TLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
