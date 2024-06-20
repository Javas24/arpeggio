class ArpValidator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName masih kosong tuhh';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Emailnya ga boleh kosong';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Emailnya ga bener itu';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Passwordnya ga boleh kosong';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Passwordnya minimal 6 karakter yaa';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Passwordnya minimal ada satu huruf kapital yaa';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Passwordnya minimal ada satu angka.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Passwordnya minimal ada satu spesial karakter';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor teleponnya ga boleh kosong';
    }

    // Regular expression for phone number validation (assuming a 10-digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{12}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Nomor teleponnya ga bener itu (12 digit yaa).';
    }

    return null;
  }

// Add more custom validators as needed for your specific requirements.
}
