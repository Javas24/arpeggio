import 'package:arpeggio/exceptions/firebase_auth_exceptions.dart';
import 'package:arpeggio/exceptions/firebase_exceptions.dart';
import 'package:arpeggio/exceptions/format_exceptions.dart';
import 'package:arpeggio/exceptions/platform_exceptions.dart';
import 'package:arpeggio/features/login/login.dart';
import 'package:arpeggio/features/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect(_auth.currentUser);
  }

  screenRedirect(User? user) async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => NavigationBar(
              destinations: const [],
            ));
      } else {
        Get.offAll(() => const LoginScreen());
      }
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const SignUpScreen());
    }
  }

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw ArpFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw ArpFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const ArpFormatException();
    } on PlatformException catch (e) {
      throw ArpPlatformException(e.code).message;
    } catch (e) {
      throw 'Sepertinya ada yang salah, coba lagi deh';
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw ArpFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw ArpFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const ArpFormatException();
    } on PlatformException catch (e) {
      throw ArpPlatformException(e.code).message;
    } catch (e) {
      throw 'Sepertinya ada yang salah, coba lagi deh';
    }
  }
}
