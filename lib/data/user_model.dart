import 'package:arpeggio/formatters/formatter.dart';

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

  String get formatedTelepon => ArpFormatter.formatPhoneNumber(telepon);

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
}
