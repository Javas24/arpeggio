import 'package:arpeggio/formatters/formatter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String nama;
  final String email;
  String telepon;
  String profilePicture;

  UserModel({
    required this.id,
    required this.nama,
    required this.email,
    required this.telepon,
    required this.profilePicture,
  });

  String get namaLengkap => nama;

  String get formatedTelepon => ArpFormatter.formatTelepon(telepon);

  static UserModel empty() =>
      UserModel(id: '', nama: '', email: '', telepon: '', profilePicture: '');

  Map<String, dynamic> toJson() {
    return {
      'Nama': nama,
      'Email': email,
      'Telepon': telepon,
      'ProfilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
          id: document.id,
          nama: data['Nama'] ?? '',
          email: data['Email'] ?? '',
          telepon: data['Telepon'] ?? '',
          profilePicture: data['ProfilePicture'] ?? '');
    } else {
      return UserModel.empty();
    }
  }
}
