// import 'package:fittness_app/constants/colors.dart';
// import 'package:fittness_app/controllers/hero_section_controller.dart';
// import 'package:fittness_app/widget/dashboard_card.dart';
// import 'package:fittness_app/widget/profile_card.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart'; // Import Get package

// class HeroSectionScreen extends StatelessWidget {
//   const HeroSectionScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Initialize the controller. Get.put() injects the controller into the widget tree.
//     final HeroSectionController controller = Get.put(HeroSectionController());

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 27.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "LOGO",
//                     style: GoogleFonts.poppins(
//                       textStyle: TextStyle(
//                         fontSize: 10.sp,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.kTextColor,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10.w),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         //Image.asset('assets/logo.png', width: 82, height: 33),
//                         Container(
//                           height: 20.49.h,
//                           width: double.infinity.h,

//                           //padding: const EdgeInsets.symmetric(horizontal: 8),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: AppColors.kBorderGreyColor,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(2.1.r),
//                           ),
//                           child: InkWell(
//                             onTap: () {
//                               //  Get.to(() => LocationPermission());
//                             },
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   CupertinoIcons.location_solid,
//                                   color: Colors.grey,
//                                   size: 10.25.h,
//                                 ),
//                                 SizedBox(width: 3.w),
//                                 Expanded(
//                                   child: Text(
//                                     'Gulberg Phase 4 , Lahore',
//                                     style: TextStyle(
//                                       fontSize: 6.25.sp,
//                                       fontFamily: 'Poppins-Regular',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 12.3.h,
//                                   width: 12.3.w,
//                                   child: Icon(CupertinoIcons.forward),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Health Dashboard",
//                     style: GoogleFonts.poppins(
//                       textStyle: TextStyle(
//                         fontSize: 10.sp,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 9.h),
//                   Obx(
//                     () => GridView.builder(
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemCount: controller.healthData.length,
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3,
//                         crossAxisSpacing: 10.w,
//                         mainAxisSpacing: 10.h,
//                         childAspectRatio: 1.0,
//                       ),
//                       itemBuilder: (context, index) {
//                         return DashboardCard(
//                           data: controller.healthData[index],
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10.h),
//             Container(
//               height: 50.h,
//               width: 40.w,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFEF2F2),
//                 border: Border.all(color: Color(0xFFEF4444), width: 2.w),
//                 shape: BoxShape.circle,
//               ),
//               child: Center(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "SOS",
//                       style: TextStyle(
//                         color: Color(0xFFEA4335),
//                         fontSize: 5.6.w,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Icon(
//                       Icons.power_settings_new,
//                       size: 20.w,
//                       color: Color(0xFFEF4444),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 9.6.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Top Doctor",
//                     style: GoogleFonts.poppins(
//                       textStyle: TextStyle(
//                         fontSize: 7.31.sp,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "See all",
//                       style: GoogleFonts.poppins(
//                         textStyle: TextStyle(
//                           fontSize: 5.49.sp,
//                           color: Color(0xFF005DFF),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16.h),
//             Padding(
//               padding: EdgeInsets.only(left: 20.w),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Obx(
//                   () => Row(
//                     children: controller.doctorData
//                         .map(
//                           (data) => ProfileCard(
//                             name: data["name"]!,
//                             specialty: data["specialty"]!,
//                             rating: data["rating"]!,
//                             distance: data["distance"]!,
//                           ),
//                         )
//                         .toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:fittness_app/constants/colors.dart';
import 'package:fittness_app/controllers/hero_section_controller.dart';
import 'package:fittness_app/widget/dashboard_card.dart';
import 'package:fittness_app/widget/profile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class HeroSectionScreen extends StatelessWidget {
  const HeroSectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HeroSectionController controller = Get.put(HeroSectionController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 27.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LOGO",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.kTextColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 20.49.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.kBorderGreyColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(2.1.r),
                            ),
                            child: InkWell(
                              onTap: () {
                                // Get.to(() => LocationPermission());
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.location_solid,
                                    color: Colors.grey,
                                    size: 10.25.h,
                                  ),
                                  SizedBox(width: 3.w),
                                  Expanded(
                                    child: Text(
                                      'Gulberg Phase 4 , Lahore',
                                      style: TextStyle(
                                        fontSize: 6.25.sp,
                                        fontFamily: 'Poppins-Regular',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    height: 12.3.h,
                                    width: 12.3.w,
                                    child: Icon(CupertinoIcons.forward),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Health Dashboard",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.healthData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.w,
                        mainAxisSpacing: 10.h,
                        childAspectRatio: 1.0,
                      ),
                      itemBuilder: (context, index) {
                        return DashboardCard(
                          data: controller.healthData[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 50.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: Color(0xFFFEF2F2),
                border: Border.all(color: Color(0xFFEF4444), width: 2.w),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SOS",
                      style: TextStyle(
                        color: Color(0xFFEA4335),
                        fontSize: 5.6.w,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.power_settings_new,
                      size: 20.w,
                      color: Color(0xFFEF4444),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 4.6.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Doctor",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 7.31.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 5.49.sp,
                          color: Color(0xFF005DFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.54.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    children: controller.doctorData
                        .map(
                          (data) => ProfileCard(
                            name: data["name"]!,
                            specialty: data["specialty"]!,
                            rating: data["rating"]!,
                            distance: data["distance"]!,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
