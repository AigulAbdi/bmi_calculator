import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/enums/enum.dart';
import 'package:get/get.dart';

HomeController homeController = Get.find<HomeController>();

class HomeController extends GetxController {
  RxDouble heightValue = 150.0.obs;
  Rx<int> weight = 60.obs;
  Rx<int> age = 25.obs;
  Rx<Color> maleSelected = AppColors.inactiveColor.obs;
  Rx<Color> femaleSelected = AppColors.inactiveColor.obs;

  final Rx<GlobalKey<ScaffoldMessengerState>> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>().obs;

  ageFunction(bool ageMP) {
    if (ageMP == false) {
      age.value = age.value - 1;
    }
    if (ageMP == true) {
      age.value = age.value + 1;
    }
  }

  void enumMaleOrFemale(Gender gender) {
    if (gender == Gender.male) {
      maleSelected.value = AppColors.activeColor;
      femaleSelected.value = AppColors.inactiveColor;
    } else if (gender == Gender.female) {
      femaleSelected.value = AppColors.activeColor;
      maleSelected.value = AppColors.inactiveColor;
    }
  }
}
