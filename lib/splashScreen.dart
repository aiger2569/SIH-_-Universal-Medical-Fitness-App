import 'package:fittness_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Start navigation after build
    Future.delayed(const Duration(seconds: 3), () {
      // Replace with actual auth check
      bool isLoggedIn = false;

      if (isLoggedIn) {
        Get.offAll(() => const LoginPage());
      } else {
        Get.offAll(() => const LoginPage());
      }
    });

    return Scaffold(
      backgroundColor: AppColors.brandBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   "assets/logo.png",
            //   height: 100,
            // ),
            const SizedBox(height: 20),
            const Text(
              "Logo",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            // const CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
