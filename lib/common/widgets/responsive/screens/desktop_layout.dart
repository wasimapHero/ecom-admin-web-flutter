import 'package:flutter/material.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/containers/rounded_container.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key,  this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Drawer()),
          Expanded(
            flex: 5,
              child: Column(
            children: [
              // HEADER
              TRoundedContainer(
                height: 75,
                width: double.infinity,
                  backgroundColor: Colors.blue.withAlpha(100)
              ),

              // BODY as a Container
              body ?? SizedBox()

            ],
          ))
        ],
      ),
    );
  }
}

