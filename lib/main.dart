// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/views/check-login.dart';
import 'package:get_storage/get_storage.dart';

import 'bindings/initial_bindings.dart';

void main() async {
  await GetStorage.init(); // تهيئة التخزين
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      home: CheckLogin(),
    );
  }
}
