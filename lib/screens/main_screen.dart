import 'package:fittness_app/screens/WalletScreen.dart';
import 'package:fittness_app/screens/hero_screen.dart';
import 'package:fittness_app/screens/lab_report_scree.dart';
import 'package:flutter/material.dart';

import 'package:fittness_app/screens/meditation_scree.dart';
import 'package:fittness_app/screens/nutrution_screen.dart';
import 'package:fittness_app/screens/profile_screen.dart';
import 'package:fittness_app/screens/setting_screen.dart';
import 'package:fittness_app/widget/custom_bottom_nav.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  late int selectedIndex;

  final List<Widget> screens = [
    HeroSectionScreen(),
    NutrutionScreen(),
    LabReportScreen(),
    MeditationScree(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex; // initialize with passed index
  }

  void onNavTap(int index) {
    if (index == selectedIndex) return; // do nothing if same tab

    // Update selectedIndex state
    setState(() {
      selectedIndex = index;
    });

    // Optional: If you want GetX navigation instead of just setState
    // Get.off(() => HeroScreen(initialIndex: index),
    //     transition: Transition.noTransition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: onNavTap,
      ),
    );
  }
}
