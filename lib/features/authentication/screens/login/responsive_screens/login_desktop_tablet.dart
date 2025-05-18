import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/login_template.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/widgets/login_form.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/widgets/login_header.dart';

class LoginDesktopTabletScreen extends StatelessWidget {
 const LoginDesktopTabletScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: TLoginTemplate(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                TLoginHeader(),
      
                // Form
                TLoginForm(),
      
              ],
            ),)
    );
  }
}
