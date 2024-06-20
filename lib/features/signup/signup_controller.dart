import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/data/authentication_repository.dart';
import 'package:arpeggio/data/user_model.dart';
import 'package:arpeggio/data/user_repository.dart';
import 'package:arpeggio/features/signup/verify_email.dart';
import 'package:arpeggio/helper/full_screen_loader.dart';
import 'package:arpeggio/helper/loaders.dart';
import 'package:arpeggio/helper/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final nama = TextEditingController();
  final email = TextEditingController();
  final telepon = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      ArpFullScreenLoader.openLoadingDialog(
          'Lagi memproses...', ArpImage.loading);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        ArpFullScreenLoader.stopLoading();
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newUser = UserModel(
        id: userCredential.user!.uid,
        nama: nama.text.trim(),
        email: email.text.trim(),
        telepon: telepon.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      ArpFullScreenLoader.stopLoading();

      ArpLoaders.successSnackBar(
          title: 'Yahuuu', message: 'Berhasil bikin akun nihh.');

      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      ArpFullScreenLoader.stopLoading();

      ArpLoaders.errorSnackBar(title: 'Waduhhh!', message: e.toString());
    }
  }
}
