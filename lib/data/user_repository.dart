import 'package:arpeggio/data/authentication_repository.dart';
import 'package:arpeggio/data/user_model.dart';
import 'package:arpeggio/exceptions/firebase_exceptions.dart';
import 'package:arpeggio/exceptions/format_exceptions.dart';
import 'package:arpeggio/exceptions/platform_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
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

  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db.collection("Users").doc(AuthenticationRepository.instance.authUser?.uid).get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
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

  Future<void> updateUserDetails(UserModel updatedUser) async {
    try {
      await _db.collection("Users").doc(updatedUser.id).set(updatedUser.toJson());
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

  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection("Users").doc(AuthenticationRepository.instance.authUser?.uid).update(json);
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

  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("Users").doc(userId).delete();
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
