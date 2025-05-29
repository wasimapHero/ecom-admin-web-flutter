
import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/templates/site_layout.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/dashboard/responsive_screens/dashboard_desktop_tablet.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/dashboard/responsive_screens/dashboard_mobile.dart';

class DashboardScreen extends StatelessWidget {
const DashboardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TSiteTemplate(useLayout: false, desktop: DashboardDesktopTabletScreen(), mobile: DashboardMobileScreen());
  }
}