import 'package:flutter/material.dart';
import 'package:grocery_flutter_app/constants/my_app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../constants/my_app_constants.dart';
import '../../widgets/landing page/btn_widget.dart';
import '../../widgets/landing page/green_circle_widget.dart';
import '../view_model/landing_page_viewModel.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LandingViewModel>.reactive(
      viewModelBuilder: () => LandingViewModel(),
      builder:
          (BuildContext context, LandingViewModel viewModel, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              // Light Green Container with Image
              Stack(
                alignment: Alignment.center, // Center the image
                children: [
                  const LightGreenCircle(), // Background Circle
                  Positioned(
                    top: 110, // Adjust as needed
                    child: Image.asset(
                      landingPages[viewModel.currentPageIndex].imgPath,
                      height: 200, // Adjust image size
                    ),
                  ),
                ],
              ),
              // Page Content (Text and Button)
              Expanded(
                child: PageView.builder(
                  controller: viewModel.pageController,
                  onPageChanged: viewModel.onPageChanged,
                  itemCount: landingPages.length,
                  itemBuilder: (context, index) {
                    final page = landingPages[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10), // Spacing from image
                          Text(
                            page.heading,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            page.title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          landingPages.length,
                              (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: viewModel.currentPageIndex == index
                                  ? MyAppColors.darkGreenColor
                                  : Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      LandingPageButton(
                        text: viewModel.currentPageIndex == 2
                            ? "Get Started"
                            : "Next",
                        onPressed: viewModel.currentPageIndex == 2
                            ? viewModel.goToLastPage
                            : viewModel.nextPage,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
