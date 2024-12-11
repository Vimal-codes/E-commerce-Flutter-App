import 'package:flutter/material.dart';
import 'package:grocery_flutter_app/constants/my_app_colors.dart';

import '../../widgets/splash/splash_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColors.backgroundColor,
      body: SplashLogo(),
    );
  }
}
