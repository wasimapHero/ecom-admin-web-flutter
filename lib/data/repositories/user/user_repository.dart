import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/data/models_abstract/user_model.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/firebase_exceptions.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/format_exceptions.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController{ 
  static UserRepository get instance => Get.find();
  
  final _db = FirebaseFirestore.instance;

  /// Function to save user data to Firestore.
  Future<void> createUser(UserModel user) async {
     try {                                  //user datar pathano id diye doc id banano holo.
      await _db.collection('LilacEcomUsers').doc(user.id).set(user.toJson());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}