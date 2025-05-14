
import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/containers/rounded_container.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key,  this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body:body ?? SizedBox()
    );
  }
}

