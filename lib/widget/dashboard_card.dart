// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DashboardCard extends StatelessWidget {
//   final Map<String, String> data;

//   const DashboardCard({Key? key, required this.data}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 49.h,
//       width: 55.h,
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(5.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             data["label"]!,
//             style: GoogleFonts.poppins(
//               textStyle: TextStyle(fontSize: 4.sp, color: Color(0xFF64748B)),
//             ),
//           ),
//           SizedBox(height: 4.h),
//           RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: data["value"]!,
//                   style: GoogleFonts.poppins(
//                     textStyle: TextStyle(
//                       fontSize: 10.sp,
//                       fontWeight: FontWeight.w700,
//                       color: Color(0xFF334155),
//                     ),
//                   ),
//                 ),
//                 if (data["unit"] == "BPM" || data["unit"] == "°F")
//                   TextSpan(
//                     text: " ${data["unit"]}",
//                     style: GoogleFonts.poppins(
//                       textStyle: TextStyle(
//                         fontSize: 3.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF334155),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           SizedBox(height: 4.h),
//           Text(
//             data["range"]!,
//             style: GoogleFonts.poppins(
//               textStyle: TextStyle(fontSize: 3.sp, color: Color(0xFF64748B)),
//             ),
//           ),
//           SizedBox(height: 4.h),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),

//             child: Text(
//               data["status"]!,
//               style: GoogleFonts.poppins(
//                 textStyle: TextStyle(
//                   fontSize: 3.sp,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF065F46),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {
  final Map<String, String> data;

  const DashboardCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.h,
      width: 56.h,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1.r,
            blurRadius: 5.r,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            data["label"]!,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 4.sp,
                color: Colors.black,
                letterSpacing: 0.h,
              ),
            ),
          ),
          Text(
            data["value"]!,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.5,
                letterSpacing: 0.h,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data["range"]!,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 3.sp,
                    color: Colors.black,
                    letterSpacing: 0,
                  ),
                ),
              ),
              Text(
                data["status"]!,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 3.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.5.h,
                    color: const Color(0xFF34A853),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
