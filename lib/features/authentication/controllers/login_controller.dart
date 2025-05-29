import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/authentication/authentication_repository.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/user/user_repository.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/image_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/text_strings.dart';
import 'package:web_by_flutter_ecom_admin/utils/helpers/network_manager.dart';
import 'package:web_by_flutter_ecom_admin/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final locaStorage = GetStorage();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  /// Handles email and password signin process
  Future<void> emailAndPasswordSignIn() async {

  }


  /// Handles registration of admin user
  Future<void> registerAdmin() async {

    // Start Loading
    TFullScreenLoader.openLoadingDialog('Registering Admin Account...', TImages.docerAnimation);

    // Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLoader.stopLoading();
      return;
    }

    // Register user using Email & Password Authentication
    await AuthenticationRepository.instance.registerWithEmailAndPassword(TTexts.adminEmail, TTexts.adminPassword);
  
    // Create admin record in the firestore
    final userRepository = Get.put(UserRepository());
   
  
  }
}