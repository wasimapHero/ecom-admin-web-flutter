import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/reset_password/widgets/reset_password_widget.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class DashboardMobileScreen extends StatelessWidget {
  const DashboardMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return Scaffold(
      body: Center(child: Text("Dashboard"),),
    );
  }
}
