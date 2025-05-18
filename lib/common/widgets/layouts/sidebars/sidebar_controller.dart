import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/utils/device/device_utility.dart';

class SidebarController  extends GetxController{
  final activeItem = TRoutes.responsiveDesignPageScreen.obs;
  final hoverItem = ''.obs;

  void changeActiveItem(String route) => activeItem.value = route;
  void changeHoverItem(String route) {
    if(!isActive(route)) hoverItem.value = route;
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHovering(String route) => hoverItem.value == route;

  void menuOnTap(String route) {
    if(!isActive(route)){
      changeActiveItem(route);
      if(TDeviceUtils.isMobileScreen(Get.context!)) Get.back();

      Get.toNamed(route);
    }
  }
}