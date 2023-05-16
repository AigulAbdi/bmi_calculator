import 'package:bmi_calculator/screens/home_controller.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../enums/enum.dart';
import '../widgets/calculate_widget.dart';

import '../widgets/male_female_widget.dart';
import '../widgets/age_weight.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeController homeController = Get.put<HomeController>(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: homeController.scaffoldKey.value,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Obx(
                () => Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaleFemaleWidget(
                          onTap: () =>
                              homeController.enumMaleOrFemale(Gender.male),
                          tekst: 'MALE',
                          icons: FontAwesomeIcons.mars,
                          colors: homeController.maleSelected.value,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaleFemaleWidget(
                          onTap: () =>
                              homeController.enumMaleOrFemale(Gender.female),
                          tekst: 'female',
                          icons: FontAwesomeIcons.venus,
                          colors: homeController.femaleSelected.value,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff0A001F),
                      borderRadius: BorderRadius.circular(
                        15,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Obx(() => Text(
                                homeController.heightValue.toStringAsFixed(0),
                                style: const TextStyle(fontSize: 70),
                              )),
                          const Text('cm'),
                        ],
                      ),
                      Obx(() => Slider(
                            min: 50,
                            max: 220,
                            activeColor: Colors.red,
                            inactiveColor: Colors.grey,
                            thumbColor: Colors.white,
                            value: homeController.heightValue.value,
                            onChanged: (double userValue) {
                              homeController.heightValue.value = userValue;
                            },
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AgeWeightWidget(
                          heroTag2: 'tag3',
                          heroTag1: 'tag4',
                          label: 'weight'.toUpperCase(),
                          text: '${homeController.weight.value}',
                          onPressedMinus: () => homeController.weight.value--,
                          onPressedPlus: () => homeController.weight.value++,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AgeWeightWidget(
                          heroTag2: 'tag1',
                          heroTag1: 'tag2',
                          label: 'AGe',
                          text: '${homeController.age.value}',
                          onPressedMinus: () {
                            homeController.ageFunction(false);
                          },
                          onPressedPlus: () {
                            homeController.ageFunction(true);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CalculateWidget(
                text: 'calculate'.toUpperCase(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
