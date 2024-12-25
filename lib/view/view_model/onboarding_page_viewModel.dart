import 'package:stacked/stacked.dart';

class OnboardingPageViewModel extends BaseViewModel {
  bool _obscurePassword = true;

  bool get obscurePassword => _obscurePassword;

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }
}