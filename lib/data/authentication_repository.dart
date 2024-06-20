import 'package:arpeggio/exceptions/firebase_auth_exceptions.dart';
import 'package:arpeggio/exceptions/firebase_exceptions.dart';
import 'package:arpeggio/exceptions/format_exceptions.dart';
import 'package:arpeggio/exceptions/platform_exceptions.dart';
import 'package:arpeggio/features/login/login.dart';
import 'package:arpeggio/features/signup/verify_email.dart';
import 'package:arpeggio/navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const ArpNavigationBar());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      deviceStorage.writeIfNull('IsFirstTime', true);
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const LoginScreen());
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

  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
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

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
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

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
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
