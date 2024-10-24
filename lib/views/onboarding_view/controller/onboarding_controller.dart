import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  PageController pageController = PageController(); // التحكم في PageView

  void nextPage() {
    pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void previousPage() {
    pageController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
