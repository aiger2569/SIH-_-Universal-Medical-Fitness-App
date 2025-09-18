import 'package:fittness_app/constants/colors.dart';
import 'package:fittness_app/controllers/signup_controller.dart';
import 'package:fittness_app/screens/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.h),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Get.back(),
                  ),
                  SizedBox(width: 45.h),
                  Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  //SizedBox(width: 88.h),
                ],
              ),
              const SizedBox(height: 30),

              // Name
              TextField(
                controller: controller.nameController,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  prefixIcon: const Icon(Icons.person_outline),
                  filled: true,
                  fillColor: AppColors.ktextFromField,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.06.h),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Email
              TextField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  filled: true,
                  fillColor: AppColors.ktextFromField,
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.06.h),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Password
              Obx(
                () => TextField(
                  controller: controller.passwordController,
                  obscureText: controller.isPasswordHidden.value,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.ktextFromField,
                    hintText: "Enter your password",

                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isPasswordHidden.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: controller.togglePassword,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.06.h),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Checkbox
              Obx(
                () => Row(
                  children: [
                    Checkbox(
                      splashRadius: 4.35.h,
                      value: controller.isChecked.value,
                      onChanged: controller.toggleCheckBox,
                    ),
                    const Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: "I agree to the medidoc ",
                          children: [
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: " and "),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.signUp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Already have account
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to login screen
                    Get.to(() => LoginScreen());
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      children: [
                        TextSpan(
                          text: "Log in",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
