import 'package:flutter/material.dart';
import 'package:grocery_flutter_app/widgets/onboarding%20page/action_btn_widget.dart';
import 'package:grocery_flutter_app/widgets/onboarding%20page/image_widget.dart';
import 'package:grocery_flutter_app/widgets/onboarding%20page/textbox_widget.dart';

class Signup2Screen extends StatelessWidget {
  const Signup2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const ImageWidget(),
          const SizedBox(height: 70),
          const CustomTextFormField(hintText: 'Email id'),
          const SizedBox(height: 8,),
          const CustomTextFormField(hintText: 'Phone Number'),
          const SizedBox(height: 120,),
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
