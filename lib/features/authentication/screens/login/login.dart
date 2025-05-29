
import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/site_layout.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/responsive_screens/login_desktop_tablet.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/responsive_screens/login_mobile.dart';

class LoginScreen extends StatelessWidget {
const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TSiteTemplate(useLayout: false, desktop: LoginDesktopTabletScreen(), mobile: LoginMobileScreen());
  }
}