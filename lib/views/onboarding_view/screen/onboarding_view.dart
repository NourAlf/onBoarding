import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../mainview.dart';
import '../controller/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController _controller = Get.put(OnboardingController());

  final List<Map<String, String>> onboardingData = [
    {'text': 'Welcome to our e-commerce app!', 'image': 'assets/onboard1.jpg'},
    {'text': 'Find the best products for you.', 'image': 'assets/onboard2.jpg'},
    {'text': 'Shop with confidence and ease.', 'image': 'assets/onboard3.jpg'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller.pageController, // ربط PageController
                onPageChanged: (index) {
                  _controller.currentPage.value = index;
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onboardingData[index]['image']!, height: 250), // الصورة المتحركة
                      SizedBox(height: 20),
                      Text(
                        onboardingData[index]['text']!,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                    (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.all(4.0),
                  width: _controller.currentPage.value == index ? 16 : 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _controller.currentPage.value == index ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
            )),
            SizedBox(height: 20),
            Obx(() => ElevatedButton(
              onPressed: () {
                if (_controller.currentPage.value == onboardingData.length - 1) {
                  Get.off(MainView()); // الانتقال إلى الشاشة الرئيسية عند الانتهاء
                } else {
                  _controller.nextPage(); // الانتقال إلى الصفحة التالية
                }
              },
              child: Text(_controller.currentPage.value == onboardingData.length - 1 ? 'Get Started' : 'Next'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}