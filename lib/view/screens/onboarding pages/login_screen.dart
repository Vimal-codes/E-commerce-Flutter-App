import 'package:flutter/material.dart';

import '../../../constants/my_app_colors.dart';
import '../../../widgets/onboarding page/action_btn_widget.dart';
import '../../../widgets/onboarding page/image_widget.dart';
import '../../../widgets/onboarding page/textbox_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageWidget(),
          const SizedBox(height: 5),
          const CustomTextFormField(
            hintText: 'Username',
            prefixIcon: "assets/icons/onboarding/person.png"),
          const SizedBox(height: 8),
          CustomTextFormField(
            prefixIcon: "assets/icons/onboarding/lock.png",
            hintText: 'Password',
            keyboardType: null,
            isPassword: true,
            toggleObscureText: () {  },),
          const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to forgot password screen
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ActionBtnWidget(
            text: 'Login',
            onPressed: () {
              // Perform login action here
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Don't have an account?", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
              const SizedBox(width: 5),
              Text("Sign UP", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: MyAppColors.darkGreenColor))
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
