import 'package:fittness_app/constants/colors.dart';
import 'package:fittness_app/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
// Assuming you have this file
//import 'package:fittness_app/controllers/profile_screen_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileScreenController controller = Get.put(
      ProfileScreenController(),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 27.h),

              // Profile Image and Name
              Obx(
                () => Column(
                  children: [
                    CircleAvatar(
                      radius: 22.r,
                      backgroundImage: NetworkImage(
                        controller.userProfileImageUrl.value,
                      ),
                      backgroundColor: Colors.grey[200],
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 4.4.r,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.photo_camera_outlined,
                            size: 8.sp,
                            color: Color(0xFF199A8E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      controller.userName.value,
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),

              // Health Metrics Section
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: controller.healthMetrics.asMap().entries.map((
                    entry,
                  ) {
                    final index = entry.key;
                    final metric = entry.value;

                    return Row(
                      children: [
                        _buildMetricItem(
                          metric['icon'] as IconData,
                          metric['label'],
                          metric['value'],
                        ),
                        if (index < controller.healthMetrics.length - 1)
                          Container(
                            height: 26.21.h,
                            width: 0.6.w,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                          ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 18.h),

              // Menu Options List
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.menuOptions.length,
                  itemBuilder: (context, index) {
                    final option = controller.menuOptions[index];
                    bool isLogout = option['label'] == 'Logout';
                    return _buildListTile(
                      icon: isLogout
                          ? Icons.logout
                          : option['icon'] as IconData,
                      title: option['label'],
                      color: isLogout ? Colors.red : Colors.black,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricItem(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, size: 19.06.h, color: AppColors.brandBlue),
        SizedBox(height: 2.98.h),
        Text(
          label,
          style: TextStyle(fontSize: 5.96.sp, color: Colors.black),
        ),
        SizedBox(height: 1.93.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 9.53.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.brandBlue,
          ),
        ),
      ],
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 7.88.sp,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 11.81.sp,
          color: Colors.black,
        ),
        onTap: () {
          // Handle tap logic here
        },
      ),
    );
  }
}
