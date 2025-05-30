import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:web_by_flutter_ecom_admin/data/models_abstract/user_model.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/authentication/authentication_repository.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/user/user_repository.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/controllers/user_controller.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/enums.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/image_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/helpers/network_manager.dart';
import 'package:web_by_flutter_ecom_admin/utils/popups/full_screen_loader.dart';
import 'package:web_by_flutter_ecom_admin/utils/popups/loaders.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    emailController.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    passwordController.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
    
  }




/// --------------------------------- Handles registration of admin user ----------------------------------
  Future<void> registerAdmin() async {
      try {
                          // Start Loading 
                          TFullScreenLoader.openLoadingDialog('Registering Admin Account', TImages.docerAnimation);

                          // Check Internet Connectivity
                          final isConnected = await NetworkManager.instance.isConnected();
                          if (!isConnected) {
                            TFullScreenLoader.stopLoading();
                            return;
                          }

        /// --Register user using Email & Password Authentication
        await AuthenticationRepository.instance.registerWithEmailAndPassword(TTexts.adminEmail, TTexts.adminPassword);
      
        /// --Create admin record in the firestore
        final userRepository = Get.put(UserRepository());
        await userRepository.createUser(
          UserModel(
            id: AuthenticationRepository.instance.authUser!.uid,
            firstName: 'Lilac',
            lastName: 'Admin',
            email: TTexts.adminEmail,
            role: AppRole.admin,
            createdAt: DateTime.now()
            ));
      
                                // Remove Loader
                                TFullScreenLoader.stopLoading();

                                // Redirect
                                AuthenticationRepository.instance.screenRedirect();
      } catch (e) {
        TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
      }
      }

  /// ---------------------------------- Handles email and password signin process ------------------------------
  Future<void> emailAndPasswordSignIn() async {

    try {
          // Start Loading
        TFullScreenLoader.openLoadingDialog('Registering Admin Account...', TImages.docerAnimation);

        // Check Internet Connectivity
        final isConnected = await NetworkManager.instance.isConnected();
        if (!isConnected) {
          TFullScreenLoader.stopLoading();
          return;
        }

        // Form Validation
        if (!loginFormKey.currentState!.validate()) {
          TFullScreenLoader.stopLoading();
          return;
        }

        // Save data of remember me value
        if (rememberMe.value) {
          localStorage.write('REMEMBER_ME_EMAIL', emailController.text.trim());
          localStorage.write('REMEMBER_ME_PASSWORD', passwordController.text.trim());
        }

        // Login user using Email and Password Authentication
        await AuthenticationRepository.instance.loginWithEmailAndPassword(emailController.text.trim(), passwordController.text.trim());

        // Fetch user details and assign to UserController
        final user = await UserController.instance.fetchUserDetails() ;

        // Remove Loader
      TFullScreenLoader.stopLoading();

      // If user is not admin, logout and return
      if (user.role != AppRole.admin) {
        await AuthenticationRepository.instance.logout();
        TLoaders.errorSnackBar(title: 'Not Authorized', message: 'You are not authorized or have access');
      } else {
        // Redirect
        AuthenticationRepository.instance.screenRedirect();
      }
      
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }


}