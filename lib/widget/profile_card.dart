import 'package:fittness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String rating;
  final String distance;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.09.h,
      width: 55.57.w,
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.14.r), // ✅ border radius 9.14
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.w,
            offset: Offset(0, 4.w),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 9.14.h), // ✅ top se distance fix
          CircleAvatar(
            radius: 16.r,
            backgroundImage: const AssetImage("assets/logo.png"),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 8.23.h),
          Text(
            name,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 5.49.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.h,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            specialty,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 4.11.sp,
                height: 1.h,
                color: Color(0xFFADADAD),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: AppColors.brandBlue, size: 4.57.w),
              SizedBox(width: 4.w),
              Text(
                rating,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 3.66.sp, color: Colors.black),
                ),
              ),
              SizedBox(width: 8.w),
              Icon(Icons.location_on, color: Colors.grey, size: 4.57.h),
              SizedBox(width: 4.w),
              Text(
                distance,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 3.66.sp,
                    color: Color(0xFFADADAD),
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
