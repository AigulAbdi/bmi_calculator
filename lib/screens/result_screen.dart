import 'package:bmi_calculator/screens/home_controller.dart';
import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';
import '../constants/text_styles/app_text_styles.dart';
import '../local_data/bmi_calculator.dart';
import '../widgets/calculate_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    dynamic bmi = BmiCalculaterData.calculateBmi(
        height: homeController.heightValue.value,
        weight: homeController.weight.value);
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.grey,
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.8,
              child: Text(
                'Жыйынтык',
                style: AppTextStyles.whitw24w500,
              ),
            ),
            Center(
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      BmiCalculaterData.bmiResult(bmi).toString(),
                      style: AppTextStyles.green32w800,
                    ),
                    Text(
                      bmi.toStringAsFixed(0),
                      style: AppTextStyles.white80w800,
                    ),
                    Text(
                      BmiCalculaterData.giveDescription(bmi).toString(),
                      style: AppTextStyles.white12w500,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CalculateWidget(
          text: 'Recalculate',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
