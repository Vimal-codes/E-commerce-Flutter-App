import 'package:flutter/material.dart';
import 'package:grocery_flutter_app/constants/my_app_colors.dart';

class LandingPageButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const LandingPageButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: MyAppColors.darkGreenColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins', color: MyAppColors.whiteColor),
          ),
        ));
  }
}
