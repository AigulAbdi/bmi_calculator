import 'package:flutter/material.dart';

class SecondtView extends StatelessWidget {
  const SecondtView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Second View',
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Go back to First Veiw',
                style: TextStyle(
                  fontSize: 40,
                ),
              ))
        ],
      ),
    );
  }
}
