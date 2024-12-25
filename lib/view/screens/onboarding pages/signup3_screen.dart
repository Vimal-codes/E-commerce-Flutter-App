import 'package:flutter/material.dart';

import '../../../widgets/onboarding page/image_widget.dart';
import '../../../widgets/onboarding page/textbox_widget.dart';

class Signup3Screen extends StatelessWidget {
  const Signup3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          ImageWidget(),
          CustomTextFormField(hintText: 'Address Line 1'),
          SizedBox(height: 6),
          CustomTextFormField(hintText: 'Address Line 2'),
          SizedBox(height: 6),
          CustomTextFormField(hintText: 'City'),
        ],
      ),
    );
  }
}
