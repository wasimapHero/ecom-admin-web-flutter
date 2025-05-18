// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:web_by_flutter_ecom_admin/common/widgets/images/t_circular_image.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/colors.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/image_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';
import 'package:web_by_flutter_ecom_admin/utils/device/device_utility.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  THeader({
    Key? key,
     this.scaffoldKey,
  }) : super(key: key);

 final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: TColors.white,
        border: Border(bottom: BorderSide(color: TColors.grey, width: 1))
      ),
      padding: EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(
        // Mobile Menu
        leading: !TDeviceUtils.isDesktopScreen(context) ? IconButton(onPressed: () {
          scaffoldKey?.currentState?.openDrawer();
        }, icon: Icon(Iconsax.menu)) : null,

        // Search
        title: TDeviceUtils.isDesktopScreen(context) ? SizedBox(
          width: 400,
          child: TextFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.search_normal), hintText: 'Search anything ..'),
          ),
        ) : null,

        // Actions
        actions: [
          // Search Icon on Mobile
          if(!TDeviceUtils.isDesktopScreen(context) ) IconButton(onPressed: () {
            
          }, icon: Icon(Iconsax.search_normal)),

          // Notification Icon
          IconButton(onPressed: () {
            
          }, icon: Icon(Iconsax.notification)),
          SizedBox(width:TSizes.spaceBtwItems / 2,),

          // User Data
          Row(
            children: [
              TCircularImage(width: 40, padding: 2, height: 40, imageType: 'asset', image: TImages.user,)
              ,
              // Name and Email
              if(!TDeviceUtils.isMobileScreen(context) )
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Coding with Esty', style: Theme.of(context).textTheme.titleLarge,),
                  Text('wasimaesty@gmail.com', style: Theme.of(context).textTheme.labelMedium,),
                ],
              )
            
            ],
          ),

        ],
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight()+15);
}
