import 'package:fittness_app/screens/login_screen.dart';
import 'package:fittness_app/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart'; // Your AppColors

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Placeholder
              Text(
                "LOGO",
                textAlign: TextAlign.center, // text-align: center
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    height: 1.5.h,
                    letterSpacing: 0,
                    color: AppColors.kTextColor,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Heading
              Text(
                "Let's get started!",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700, // Bold = 700
                    fontStyle: FontStyle.normal, // not italic
                    height: 1.35, // line-height: 135%
                    letterSpacing: 0.sp, // no letter-spacing
                    color: Colors.black, // set your color
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Subtext
              Text(
                "Login to enjoy the features we’ve\nprovided, and stay healthy!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 7.sp,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    height: 1.29,
                    letterSpacing: 0.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 60),

              // Login Button
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
                    Get.to(() => const LoginScreen()); // Navigate with GetX
                  },
                  child: Text(
                    "Login",

                    textAlign: TextAlign.center, // text-align: center
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 10.sp, // responsive font size
                        fontWeight: FontWeight.w500, // Medium = 500
                        fontStyle: FontStyle.normal, // not italic
                        height: 1.5, // line-height: 150%
                        letterSpacing: 0.sp, // no letter-spacing
                        color: Colors.white, // set your color
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Sign up Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: AppColors.brandBlue,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: Text(
                    "Sign up",
                    textAlign: TextAlign.center, // text-align: center
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 10.sp, // responsive font size
                        fontWeight: FontWeight.w500, // Medium = 500
                        fontStyle: FontStyle.normal, // not italic
                        height: 1.5, // line-height: 150%
                        letterSpacing: 0.sp, // no letter-spacing
                        color: Colors.black, // set your color
                      ),
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
