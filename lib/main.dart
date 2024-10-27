import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/views/auth/login/login_screen.dart';
import 'package:onboarding/views/onboarding_view/screen/onboarding_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), // شاشات التعريف ستكون الشاشة الأولى
    );
  }
}
