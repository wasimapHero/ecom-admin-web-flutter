import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/common/styles/t_spacing_style.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class TForgetPasswordTemplate extends StatelessWidget {
const TForgetPasswordTemplate({super.key, required this.child});
final Widget child;

  @override
  Widget build(BuildContext context){
    return Center(
        child: SizedBox(
          width: 550,
          child: Container(
            margin: EdgeInsets.only(top: Get.size.height /7),
            padding: TSpacingStyle.paddingWithAppBarHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              color:  const Color.fromARGB(255, 250, 253, 255)
            ),
            child: child
          ),
        ),
      );
  }
}