import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/firebase_exceptions.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/format_exceptions.dart';
import 'package:web_by_flutter_ecom_admin/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
    // create instance of this class;
    static AuthenticationRepository get instance => Get.find();

    // Firebase Auth instance
    final _auth = FirebaseAuth.instance;

    // Get Authenticated User Data
    User? get authUser => _auth.currentUser;

    // Get IsAuthenticated User
    bool get IsAuthenticated => authUser != null;

    @override
  void onReady() {
    // to save the (login state) within the browser:: if logged in state, then redirect to
    //dashboard , otherwise to login page.  
    _auth.setPersistence(Persistence.LOCAL);  // only for web
    super.onReady();
  }

  // LOGIN
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
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

  // REGISTER
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
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
