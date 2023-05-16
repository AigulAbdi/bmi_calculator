import 'package:flutter/material.dart';


class MaleFemaleWidget extends StatelessWidget {
  const MaleFemaleWidget({
    super.key,
    required this.tekst,
    required this.icons,
     required this.onTap, 
     required this.colors,
  });
  final String tekst;
  final IconData icons;
  final Color colors;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(15),
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              icons,
              size: 70,
            ),
            Text(
              tekst.toUpperCase(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
