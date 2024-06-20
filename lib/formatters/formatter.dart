import 'package:intl/intl.dart';

class ArpFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); // Customize the currency locale and symbol as needed
  }

  static String formatTelepon(String telepon) {
    // Assuming a 10-digit US phone number format: (123) 456-7890
    if (telepon.length == 12) {
      return '(${telepon.substring(0, 4)}) ${telepon.substring(4, 8)} ${telepon.substring(8)}';
    } else if (telepon.length == 13) {
      return '(${telepon.substring(0, 4)}) ${telepon.substring(4, 8)} ${telepon.substring(8)}';
    }
    // Add more custom phone number formatting logic for different formats if needed.
    return telepon;
  }


  // Not fully tested.
  static String internationalFormattelepon(String telepon) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = telepon.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+62') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }




}


/*
*
*
* */
