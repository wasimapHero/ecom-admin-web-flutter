import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:web_by_flutter_ecom_admin/data/models_abstract/user_model.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/user/user_repository.dart';
import 'package:web_by_flutter_ecom_admin/utils/popups/loaders.dart';

/// Controller for managing admin-related data and operations 
class UserController extends GetxController{
  // create instance of this class;
    static UserController get instance => Get.find();

    final userRepository = Get.put(UserRepository());

    // Fetches user details from the repository
    Future<UserModel> fetchUserDetails() async{
      try {
        final user = await userRepository.fecthAdminDetails();
        return user;
      } catch (e) {
      TLoaders.errorSnackBar(title: 'Something went wrong.', message: e.toString());
        return UserModel.empty();
      }
    }
}