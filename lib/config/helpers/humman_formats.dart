import 'package:intl/intl.dart';

class HummanFormats {
  static String formatNumber(int number) {
     final formatter = NumberFormat.compactCurrency(
       decimalDigits: 0,
       symbol: '',
     );
     return formatter.format(number);
  }
}

