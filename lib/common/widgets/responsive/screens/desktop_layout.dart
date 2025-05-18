import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/containers/rounded_container.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/headers/header.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/sidebars/sidebar.dart';

class DesktopLayout extends StatelessWidget {
   DesktopLayout({super.key,  this.body});
  final Widget? body;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: TSidebar()),
          Expanded(
            flex: 5,
              child: Column(
            children: [
              // HEADER
              THeader(),
              // BODY as a Container
              body ?? SizedBox()

            ],
          ))
        ],
      ),
    );
  }
}

