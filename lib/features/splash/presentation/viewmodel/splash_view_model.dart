import 'package:final_assignment/features/splash/presentation/navigator/splash_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashViewModelProvider = StateNotifierProvider<SplashViewModel, void>((ref) {
  final navigator = ref.read(splashViewNavigatorProvider);
  return SplashViewModel(navigator);
});

class SplashViewModel extends StateNotifier<void> {
  SplashViewModel(this.navigator) : super(null);

  final SplashViewNavigator navigator;

  // Open Login page
  void openLoginView(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      navigator.openLoginView();
    });
  }

  // Open Home page (for future use)
  void openHomeView(BuildContext context) {
    // Future logic for opening home page
    // navigator.openHomeView();
  }
}
