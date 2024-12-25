import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class LandingViewModel extends BaseViewModel {
  final PageController pageController = PageController();
  int _currentPage = 0;

  int get currentPageIndex => _currentPage;

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void nextPage() {
    if (_currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToLastPage() {
    pageController.animateToPage(
      2, // Last page index
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
