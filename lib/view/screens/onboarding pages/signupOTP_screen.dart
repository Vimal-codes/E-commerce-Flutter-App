import 'package:flutter/material.dart';

import '../../../widgets/onboarding page/action_btn_widget.dart';
import '../../../widgets/onboarding page/image_widget.dart';
import '../../../widgets/onboarding page/textbox_widget.dart';


class SignupOtpScreen extends StatelessWidget {
  const SignupOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const ImageWidget(),
            const Text("Verification", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            const SizedBox(height: 12,),
            const Text("Enter OTP code sent to your number", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            const SizedBox(height: 270),
            ActionBtnWidget(
              text: 'Submit',
              onPressed: (){

              },
            )
          ],
        ),
      ),
    );
  }
}
