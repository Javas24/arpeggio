/// Exception class for handling various errors.
class ArpExceptions implements Exception {
  /// The associated error message.
  final String message;

  /// Default constructor with a generic error message.
  const ArpExceptions([this.message = 'Error nihh. Coba lagi dehh.']);

  /// Create an authentication exception from a Firebase authentication exception code.
  factory ArpExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const ArpExceptions(
            'Emailnya udah terdaftar. Coba pake email lain.');
      case 'invalid-email':
        return const ArpExceptions(
            'Alamat emailnya ga bener. Coba masukin email yang bener');
      case 'weak-password':
        return const ArpExceptions(
            'Passwordnya gampang dibobol. Coba pilih password lain');
      case 'user-disabled':
        return const ArpExceptions(
            'Akun pengguna ini dimatikan. Coba hubungi bantuan support');
      case 'user-not-found':
        return const ArpExceptions('Ga bisa login. User ga ada');
      case 'wrong-password':
        return const ArpExceptions('Password salah. Coba cek lagi dehh');
      case 'INVALID_LOGIN_CREDENTIALS':
        return const ArpExceptions('Ga bisa login. Coba cek lagi dehh');
      case 'too-many-requests':
        return const ArpExceptions('Sabarrr. Coba lagi nanti');
      case 'invalid-argument':
        return const ArpExceptions(
            'Invalid argument provided to the authentication method.');
      case 'invalid-password':
        return const ArpExceptions('Password salah. Coba cek lagi dehh');
      case 'invalid-phone-number':
        return const ArpExceptions('Nomor teleponnya ga bener itu');
      case 'operation-not-allowed':
        return const ArpExceptions(
            'The sign-in provider is disabled for your Firebase project.');
      case 'session-cookie-expired':
        return const ArpExceptions(
            'The Firebase session cookie has expired. Please sign in again.');
      case 'uid-already-exists':
        return const ArpExceptions('User id udah dipake orang lain');
      case 'sign_in_failed':
        return const ArpExceptions('Gagal masuk. Coba lagi dehh');
      case 'network-request-failed':
        return const ArpExceptions(
            'Ga ada internet. Coba cek koneksi internet kamu');
      case 'internal-error':
        return const ArpExceptions('Internal error. Please try again later.');
      case 'invalid-verification-code':
        return const ArpExceptions(
            'Kode verifikasinya ga bener. Coba masukin kode yang bener');
      case 'invalid-verification-id':
        return const ArpExceptions(
            'Verifikasi ID nya ga bener. Coba minta kode verifikasi yang baru');
      case 'quota-exceeded':
        return const ArpExceptions('Quota exceeded. Please try again later.');
      default:
        return const ArpExceptions();
    }
  }
}
