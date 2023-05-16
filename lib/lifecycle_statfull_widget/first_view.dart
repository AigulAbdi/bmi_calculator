import 'package:bmi_calculator/lifecycle_statfull_widget/second_view.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'FirstView',
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SecondtView()),
                    ));
              },
              child: const Text(
                'Go to next veiw',
                style: TextStyle(
                  fontSize: 40,
                ),
              ))
        ],
      ),
    );
  }
}
