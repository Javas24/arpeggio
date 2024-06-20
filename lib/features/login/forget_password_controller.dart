import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/data/authentication_repository.dart';
import 'package:arpeggio/features/login/reset_password.dart';
import 'package:arpeggio/helper/full_screen_loader.dart';
import 'package:arpeggio/helper/loaders.dart';
import 'package:arpeggio/helper/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      ArpFullScreenLoader.openLoadingDialog(
          'Tunggu sebentar yaa...', ArpImage.loading);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      if (!forgetPasswordFormKey.currentState!.validate()) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      ArpFullScreenLoader.stopLoading();

      ArpLoaders.successSnackBar(
          title: 'Email meluncur',
          message: 'Email link sudah dikirim buat reset password kamu'.tr);

      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      ArpFullScreenLoader.stopLoading();
      ArpLoaders.errorSnackBar(title: 'Wadidawww', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      ArpFullScreenLoader.openLoadingDialog(
          'Tunggu sebentar yaa...', ArpImage.loading);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email);

      ArpFullScreenLoader.stopLoading();

      ArpLoaders.successSnackBar(
          title: 'Email meluncur',
          message: 'Email link sudah dikirim buat reset password kamu'.tr);

    } catch (e) {
      ArpFullScreenLoader.stopLoading();
      ArpLoaders.errorSnackBar(title: 'Wadidawww', message: e.toString());
    }
  }
}
