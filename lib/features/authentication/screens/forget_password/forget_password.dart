
import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/site_layout.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/forget_password/responsive_screens/forget_password_desktop_tablet.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/forget_password/responsive_screens/forget_password_mobile.dart';



class ForgetPasswordScreen extends StatelessWidget {
const ForgetPasswordScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TSiteTemplate(useLayout: false, desktop: ForgetPasswordDesktopTabletScreen() ,mobile: ForgetPasswordMobileScreen());
  }
}