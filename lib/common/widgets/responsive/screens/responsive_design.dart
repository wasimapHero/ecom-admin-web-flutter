import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class TResponsiveWidget extends StatelessWidget {
   TResponsiveWidget({super.key, required this.desktop, required this.tablet, required this.mobile});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= TSizes.desktopScreenSize) {
        return desktop;
      }  else if (constraints.maxWidth < TSizes.desktopScreenSize && constraints.maxWidth >= TSizes.tabletScreenSize) {
        return tablet;
      }  else {
        return mobile;
      }

    });
  }
}
