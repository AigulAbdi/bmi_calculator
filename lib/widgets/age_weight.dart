import 'package:flutter/material.dart';

class AgeWeightWidget extends StatelessWidget {
  const AgeWeightWidget({
    super.key,
    required this.label,
    required this.text,
    required this.onPressedMinus,
    required this.onPressedPlus,
    required this.heroTag1,
    required this.heroTag2,
  });
  final String label, text;

  final void Function() onPressedMinus;
  final void Function() onPressedPlus;
  final Object heroTag1;
  final Object heroTag2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff0A001F),
          borderRadius: BorderRadius.circular(
            15,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: heroTag1,
                backgroundColor: const Color(0xff5C5B5B),
                mini: true,
                onPressed: onPressedMinus,
                child: const Icon(
                  Icons.remove,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                heroTag: heroTag2,
                backgroundColor: const Color(0xff5C5B5B),
                mini: true,
                onPressed: onPressedPlus,
                child: const Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
