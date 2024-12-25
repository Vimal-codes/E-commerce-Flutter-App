import 'package:flutter/material.dart';
import '../../constants/my_app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final VoidCallback? toggleObscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.isPassword = false,
    this.controller,
    this.keyboardType,
    this.validator,
    this.obscureText = true,
    this.toggleObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 2),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword ? obscureText : false,
        keyboardType: keyboardType,
        validator: validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return '$hintText is required';
              }
              return null;
            },
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null
              ? Container(
            height: 15,
            width: 15,
            alignment: Alignment.center,
            child: Image.asset(
              prefixIcon!,
              fit: BoxFit.contain,
              height: 20,  // Control image size within container
              width: 20,
            ),
          )
              : null,
          hintText: hintText,
          hintStyle: TextStyle(
              color: MyAppColors.hintTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: MyAppColors.darkGreenColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            // For unfocused state
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: MyAppColors.darkGreenColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: MyAppColors.darkGreenColor,
              width: 1.5,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(25, 15, 30, 15),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black54,
                  ),
                  onPressed: toggleObscureText,
                )
              : (suffixIcon != null
                  ? IconButton(
                      icon: Icon(suffixIcon, color: Colors.black54),
                      onPressed: onSuffixIconTap,
                    )
                  : null),
        ),
      ),
    );
  }
}
