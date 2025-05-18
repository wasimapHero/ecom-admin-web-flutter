import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/containers/rounded_container.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/headers/header.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/sidebars/sidebar.dart';

class MobileLayout extends StatelessWidget {
   MobileLayout({super.key,  this.body});
  final Widget? body;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
        drawer: TSidebar(),
        appBar: THeader(scaffoldKey: scaffoldKey),
        body:body ?? SizedBox()
    );
  }
}

