import 'package:flutter/material.dart';
import 'package:grocery_flutter_app/constants/my_app_colors.dart';

class ActionBtnWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ActionBtnWidget({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: MyAppColors.darkGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: MyAppColors.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
