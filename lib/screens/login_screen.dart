import 'package:fittness_app/screens/main_screen.dart';
import 'package:fittness_app/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              SizedBox(height: 23.h),

              // Title
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Get.back(),
                  ),
                  SizedBox(width: 45.h),
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kTextColor,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Email field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: "Enter your email",
                  filled: true,
                  fillColor: AppColors.ktextFromField,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.53.h),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password field
              TextField(
                controller: passwordController,
                obscureText: obscurePassword,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: AppColors.ktextFromField,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.53.h),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Forgot password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Forgot password flow
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Login button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.brandBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Handle login
                    Get.to(() => const HeroScreen());
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Sign up link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account? "),
                  GestureDetector(
                    onTap: () => Get.to(() => const SignUpScreen()),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: AppColors.brandBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Divider with OR
              Row(
                children: const [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("OR"),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),

              const SizedBox(height: 30),

              // Social buttons
              _socialButton(
                icon: "assets/google.png", // add google logo in assets
                text: "Sign in with Google",
                onTap: () {},
              ),
              const SizedBox(height: 16),
              _socialButton(
                icon: "assets/apple.png", // add apple logo in assets
                text: "Sign in with Apple",
                onTap: () {},
              ),
              const SizedBox(height: 16),
              _socialButton(
                icon: "assets/facebook.png", // add facebook logo in assets
                text: "Sign in with Facebook",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialButton({
    required String icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: 179.h,
      height: 29.23.h,

      child: OutlinedButton.icon(
        icon: SizedBox(
          height: 10.44.h,
          width: 10.44.w,
          child: Image.asset(
            icon,
            fit: BoxFit.contain,
            height: 10.44.h,
            width: 10.44.h,
          ),
        ),

        label: Text(
          text,
          style: const TextStyle(fontSize: 16, color: AppColors.kTextColor),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.grey, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.6.h),
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
