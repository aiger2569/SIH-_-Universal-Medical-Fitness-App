import 'package:fittness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabReportScreen extends StatelessWidget {
  const LabReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false, // removes back icon
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lab Report Analyzer",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp, // responsive font
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              "Upload your lab reports for AI-powered analysis and insights",
              style: TextStyle(color: Colors.black54, fontSize: 5.sp),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          height: 132.h,

          width: 178.w,
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(27.r),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.upload, size: 40.sp, color: Colors.black87),
              SizedBox(height: 10.h),
              Text(
                "Upload Lab Report",
                style: TextStyle(
                  fontSize: 5.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "Drag and drop your PDF or image file here",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 5.sp, color: Colors.black54),
              ),
              SizedBox(height: 12.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.brandBlue,
                  fixedSize: Size(59.h, 12.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 6.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                onPressed: () {
                  Get.snackbar(
                    "Upload",
                    "Choose File button pressed",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: Text(
                  "Choose File",
                  style: TextStyle(
                    fontSize: 5.sp,
                    color: Colors.white,
                    letterSpacing: 0,
                    height: 1.h,
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
