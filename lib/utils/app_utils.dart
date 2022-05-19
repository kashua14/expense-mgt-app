import 'dart:ffi';

class AppUtils {
  static String numberFormat(double number){
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');

    return number.toString().replaceAllMapped(reg, (Match match) => '${match[1]},');
  }
}