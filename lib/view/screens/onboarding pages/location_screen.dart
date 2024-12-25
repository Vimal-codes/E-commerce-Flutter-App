import 'package:flutter/material.dart';

import '../../../constants/my_app_colors.dart';
import '../../../widgets/onboarding page/action_btn_widget.dart';
import '../../../widgets/onboarding page/image_widget.dart';

class EnableLoc extends StatelessWidget {
  const EnableLoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const ImageWidget(),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Enable location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "We will need your location to give you\nbetter experience.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            ActionBtnWidget(
              text: 'Enable Location',
              onPressed: () {},
            ),
            TextButton(
                onPressed: () {},
                child: Text("Not now",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: MyAppColors.darkGreenColor)))
          ],
        ),
      ),
    );
  }
}
