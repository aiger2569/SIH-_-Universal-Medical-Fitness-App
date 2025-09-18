import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignUpController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isPasswordHidden = true.obs;
  var isChecked = false.obs;

  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleCheckBox(bool? value) {
    isChecked.value = value ?? false;
  }

  void signUp() {
    if (!isChecked.value) {
      Get.snackbar(
        "Error",
        "Please accept Terms & Privacy Policy",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "All fields are required",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // TODO: Implement Firebase/Backend Sign Up logic here
    Get.snackbar(
      "Success",
      "Account created successfully",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
