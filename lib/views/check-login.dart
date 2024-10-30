import 'package:flutter/material.dart';

import 'auth/login/login_screen.dart';
import 'home/screen/home_screen.dart';
import 'onboarding_view/screen/onboarding_view.dart';
import 'package:get_storage/get_storage.dart';

class CheckLogin extends StatelessWidget {
  final GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    bool onboardingCompleted = storage.read('onboardingCompleted') ?? false;
    bool isLoggedIn = storage.read('isLoggedIn') ?? false;

    if (onboardingCompleted) {
      if (isLoggedIn) {
        // إذا كان المستخدم قد سجل دخوله سابقاً، الانتقال إلى الشاشة الرئيسية
        return HomeScreen();
      } else {
        // إذا لم يسجل الدخول، الانتقال إلى شاشة تسجيل الدخول
        return LoginScreen();
      }
    } else {
      // إذا لم يكمل المستخدم onboarding، الانتقال إلى شاشة Onboarding
      return OnboardingView();
    }
  }
}
