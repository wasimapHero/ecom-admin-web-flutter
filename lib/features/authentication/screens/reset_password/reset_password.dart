
import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/site_layout.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/responsive_screens/login_desktop_tablet.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/responsive_screens/login_mobile.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/reset_password/responsive_screens/reset_password_desktop_tablet.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/reset_password/responsive_screens/reset_password_mobile.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/colors.dart';

class ResetPasswordScreeen extends StatelessWidget {
const ResetPasswordScreeen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TSiteTemplate(useLayout: false, desktop: ResetPasswordDesktopTabletScreen(), mobile: ResetPasswordMobileScreen());
  }
}