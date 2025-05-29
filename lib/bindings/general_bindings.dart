import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    // -- Core
    Get.lazyPut(() => NetworkManager(), fenix: true);
    // Get.lazyPut(() => UserController(), fenix: true);
  }

}