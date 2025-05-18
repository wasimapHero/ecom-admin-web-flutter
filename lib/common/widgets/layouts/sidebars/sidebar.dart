import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/images/t_circular_image.dart';
import 'package:web_by_flutter_ecom_admin/common/widgets/layouts/sidebars/menu/menu_items.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/colors.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/image_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class TSidebar extends StatelessWidget {
const TSidebar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: TColors.white,
          border: Border(right: BorderSide(color: TColors.grey, width: 1))
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TCircularImage(width: 100, height: 100, image: TImages.darkAppLogoL, backgroundColor: Colors.transparent, imageType: 'asset',),
              SizedBox(height: TSizes.spaceBtwSections,),
              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('MENU', style: Theme.of(context).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2),),
                    SizedBox(height: TSizes.md,),
                    //? Menu items
                    TMenuItems(route: TRoutes.secondScreenWithDirectParameters, icon: Iconsax.status, itemName: 'Dashboard'),
                    TMenuItems(route: TRoutes.secondScreen, icon: Iconsax.image, itemName: 'Media'),
                    TMenuItems(route: TRoutes.responsiveDesignPageScreen, icon: Iconsax.picture_frame, itemName: 'Banners'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
