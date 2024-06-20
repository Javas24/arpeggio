// import 'package:arpeggio/data/user_model.dart';
// import 'package:arpeggio/data/user_repository.dart';
// import 'package:arpeggio/helper/loaders.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';

// class UserController extends GetxController {
//   static UserController get instance => Get.find();

//   final userRepository = Get.put(UserRepository());

//   Future<void> saveUserRecord(UserCredential? userCredentials) async {
//     try {
//       if (userCredentials != null) {
//         final nameParts =
//             UserModel.nameParts(userCredentials.user!.displayName ?? '');
//         final userName =
//             UserModel.generateUsername(userCredentials.user!.displayName ?? '');

//         final user = UserModel(
//             id: userCredentials.user!.uid,
//             nama: nameParts[0],
//             email: userCredentials.user!.email ?? '',
//             telepon: userCredentials.user!.telepon ?? '',
//             profilePicture: userCredentials.user!.photoURL);
//         await UserRepository.saveUserRecord(user);
//       }
//     } catch (e) {
//       ArpLoaders.warningSnackBar(
//           title: 'Datanya ga kesimpen',
//           message:
//               'Ada yang salah pas kamu nyimpen info. Kamu bisa save ulang datamu di Profile.');
//     }
//   }
// }
