//import 'package:bmi_calculater_2/screens/result_screen.dart';
import 'package:flutter/material.dart';

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    super.key,
    required this.text,
     required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.pink,
        ),
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
