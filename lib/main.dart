import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:web_by_flutter_ecom_admin/app.dart';
import 'package:web_by_flutter_ecom_admin/firebase_options.dart';


void main() async {


  // Todo: Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init Local Storage
  // Todo: Init Payment Methods
  // Todo: Await Native Splash
  // Todo: Add url Strategy
  setPathUrlStrategy();

  // Todo: Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
      // .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}
