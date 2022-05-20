import 'dart:ffi';

class AppUtils {
  static String numberFormat(double number) {
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');

    return number
        .toString()
        .replaceAllMapped(reg, (Match match) => '${match[1]},');
  }

  static String currencyFormatter(double amount) {
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    String amountVal = amount
        .toString()
        .replaceAllMapped(reg, (Match match) => '${match[1]},');

    amountVal =
        amount < 0 ? amountVal.replaceFirst(RegExp(r'-'), "") : amountVal;

    return amount < 0 ? "-UGX $amountVal" : "+UGX $amountVal";
  }
}
