import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:web_by_flutter_ecom_admin/app.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/authentication/authentication_repository.dart';
import 'package:web_by_flutter_ecom_admin/firebase_options.dart';

void main() async {
  // Todo: Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init Local Storage
  await GetStorage.init();
  // Todo: Init Payment Methods
  // Todo: Await Native Splash
  // Todo: Add url Strategy
  setPathUrlStrategy();

  // Todo: Initialize Firebase
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  } on PlatformException catch (e) {
    // Handle PlatformException, e.g., display an error message
    print("Firebase initialization error: $e");
  } catch (e) {
    // Handle other exceptions
    print("Firebase initialization error: $e");
  }

  runApp(const App());
}
