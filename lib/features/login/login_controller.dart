import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/data/authentication_repository.dart';
import 'package:arpeggio/helper/full_screen_loader.dart';
import 'package:arpeggio/helper/loaders.dart';
import 'package:arpeggio/helper/network_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  Future<void> emailAndPasswordSignIn() async {
    try {
      ArpFullScreenLoader.openLoadingDialog(
          'Tunggu sebentar yeahh...', ArpImage.tungguDong);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      if (!loginFormKey.currentState!.validate()) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      ArpFullScreenLoader.stopLoading();

      AuthenticationRepository.instance.screenRedirect(userCredential as User?);
    } catch (e) {
      ArpFullScreenLoader.stopLoading();
      ArpLoaders.errorSnackBar(title: 'Lhooo!', message: e.toString());
    }
  }
}
