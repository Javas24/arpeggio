import 'dart:async';

import 'package:arpeggio/constants/image_strings.dart';
import 'package:arpeggio/constants/text_strings.dart';
import 'package:arpeggio/data/authentication_repository.dart';
import 'package:arpeggio/helper/loaders.dart';
import 'package:arpeggio/widgets/success_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      ArpLoaders.successSnackBar(
          title: 'Emailnya udah dikirim',
          message: 'Coba cek di kotak masuk lalu verifikasi emailmu');
    } catch (e) {
      ArpLoaders.errorSnackBar(title: 'Waduhhh!', message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
              image: ArpImage.success,
              title: ArpTexts.yourAccountCreatedTitle,
              onPressed: () =>
                  AuthenticationRepository.instance.screenRedirect(),
            ));
      }
    });
  }

  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified){
      Get.off(
        () => SuccessScreen(image: ArpImage.success, title: ArpTexts.yourAccountCreatedTitle, onPressed: () => AuthenticationRepository.instance.screenRedirect())
      );
    }
  }
}
