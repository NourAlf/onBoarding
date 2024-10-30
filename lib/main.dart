import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/views/auth/login/login_screen.dart';
import 'package:onboarding/views/check-login.dart';
import 'package:onboarding/views/onboarding_view/screen/onboarding_view.dart';
import 'package:get_storage/get_storage.dart';

void main()async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckLogin(), // شاشات التعريف ستكون الشاشة الأولى
    );
  }
}
