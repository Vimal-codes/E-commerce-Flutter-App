import 'package:flutter/material.dart';

import '../../../widgets/onboarding page/action_btn_widget.dart';
import '../../../widgets/onboarding page/image_widget.dart';
import '../../../widgets/onboarding page/textbox_widget.dart';

class Signup1Screen extends StatelessWidget {
  const Signup1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const ImageWidget(),
          const CustomTextFormField(hintText: 'Enter Username'),
          const SizedBox(height: 6),
          const CustomTextFormField(hintText: 'Enter Password'),
          const SizedBox(height: 6),
          const CustomTextFormField(hintText: 'Confirm Password'),
          const SizedBox(height: 120),
          ActionBtnWidget(
            text: 'Next',
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
}
