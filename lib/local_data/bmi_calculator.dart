import 'dart:math';

class BmiCalculaterData {
  static double calculateBmi({double? height, int? weight}) {
    final bmiOtvety = weight! / pow(height! / 100, 2);
    return bmiOtvety;
  }

  static bmiResult(double bmiOtvety) {
    if (bmiOtvety >= 25) {
      return 'Ашыкча салмак';
    } else if (bmiOtvety > 18.5) {
      return 'Идеалдуу салмак';
    } else if (bmiOtvety < 18.5) {
      return 'Аз салмак! Арыксыз';
    }
    //return null;
  }

  static giveDescription(double bmiOtvety) {
    if (bmiOtvety >= 25) {
      return 'Туура тамактаныныз!';
    } else if (bmiOtvety > 18.5) {
      return 'Азаматсыз! ';
    } else if (bmiOtvety < 18.5) {
      return 'Туура тамактаныныз жана салмак кошунуз!';
    }
    //return null;
  }
}
