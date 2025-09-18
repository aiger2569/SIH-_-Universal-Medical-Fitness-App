import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileScreenController extends GetxController {
  var userName = 'XYZ'.obs;
  var userProfileImageUrl =
      'https://picsum.photos/200'.obs; // Replace with a valid image URL

  // Health metrics data
  final healthMetrics = <Map<String, dynamic>>[
    {'icon': Icons.favorite_border, 'label': 'Heart rate', 'value': '215bpm'},
    {'icon': Icons.opacity, 'label': 'Calories', 'value': '756cal'},
    {'icon': Icons.fitness_center, 'label': 'Weight', 'value': '103lbs'},
  ].obs;

  // Menu options data
  final menuOptions = <Map<String, dynamic>>[
    {'icon': Icons.bookmark_border, 'label': 'My Saved'},
    {'icon': Icons.calendar_today_outlined, 'label': 'Appointment'},
    {'icon': Icons.credit_card_outlined, 'label': 'Payment Method'},
    {'icon': Icons.chat_outlined, 'label': 'FAQs'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ].obs;
}
