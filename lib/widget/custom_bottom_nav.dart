// import 'package:fittness_app/constants/colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomBottomNavBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;

//   const CustomBottomNavBar({
//     super.key,
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 29.71.h,
//       width: 156.42.w,
//       margin: const EdgeInsets.all(12),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: AppColors.kWhiteColor,
//         border: Border.all(color: AppColors.kBlackColor),
//         borderRadius: BorderRadius.circular(42.85.h),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           _navItem('assets/home.png', 0),
//           _navItem('assets/chat.png', 1),
//           _centerAddButton(),
//           _navItem('assets/wallet.png', 3),
//           _navItem('assets/profile.png', 4),
//         ],
//       ),
//     );
//   }

//   Widget _navItem(String svgIcon, int index) {
//     final bool isSelected = selectedIndex == index;
//     return InkWell(
//       onTap: () => onItemTapped(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(svgIcon, height: 30, width: 30),
//           const SizedBox(height: 2),
//           if (isSelected)
//             Container(
//               width: 16,
//               height: 2,
//               decoration: BoxDecoration(
//                 color: AppColors.kBlackColor,
//                 borderRadius: BorderRadius.circular(2),
//               ),
//             )
//           else
//             const SizedBox(height: 2), // keeps spacing consistent
//         ],
//       ),
//     );
//   }

//   Widget _centerAddButton() {
//     return GestureDetector(
//       onTap: () => onItemTapped(2),
//       child: Container(
//         height: 49,
//         width: 50,
//         decoration: const BoxDecoration(
//           color: AppColors.brandBlue,
//           shape: BoxShape.circle,
//         ),
//         child: Icon(CupertinoIcons.add, color: Colors.white, size: 28),
//       ),
//     );
//   }
// }
import 'package:fittness_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        border: Border.all(color: AppColors.kBlackColor),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem('assets/homenav.svg', 0),
          _navItem('assets/chatnav.svg', 1),
          _centerAddButton(),
          _navItem('assets/walletnav.svg', 3),
          _navItem('assets/profileiconnav.svg', 4),
        ],
      ),
    );
  }

  Widget _navItem(String svgIcon, int index) {
    final bool isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(svgIcon, height: 30, width: 30),
          const SizedBox(height: 2),
          if (isSelected)
            Container(
              width: 16,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.kBlackColor,
                borderRadius: BorderRadius.circular(2),
              ),
            )
          else
            const SizedBox(height: 2), // keeps spacing consistent
        ],
      ),
    );
  }

  Widget _centerAddButton() {
    return GestureDetector(
      onTap: () => onItemTapped(2),
      child: Container(
        height: 49,
        width: 50,
        decoration: const BoxDecoration(
          color: AppColors.kBlueColor,
          shape: BoxShape.circle,
        ),
        child: Icon(CupertinoIcons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
