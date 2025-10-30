 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildTodayMilkYields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          ProjectConstants.todayMilkYieldLabel,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: textPrimary),
        ),
        Text(
          ProjectConstants.todayMilkYieldSubtitle,
          style: TextStyle(fontSize: 14.sp, color: textSecondary),
        ),
        SizedBox(height: 15.h),
        
        
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.local_drink, color: primaryBlue, size: 24.sp),
            suffixText: ProjectConstants.literAbbreviation,
            suffixStyle: TextStyle(fontSize: 16.sp, color: textPrimary, fontWeight: FontWeight.bold),
            hintText: ProjectConstants.enterMilkYieldHintText,
            hintStyle: TextStyle(color: textSecondary),
            filled: true,
            fillColor: lightGrey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          ),
          style: TextStyle(fontSize: 18.sp, color: textPrimary, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15.h),

       
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.check_circle_outline, color: Colors.white, size: 24.sp),
            label: Text(ProjectConstants.completeRecordButtonText, style: TextStyle(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryBlue,
              padding: EdgeInsets.symmetric(vertical: 15.h),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
              elevation: 0,
            ),
          ),
        ),
        SizedBox(height: 10.h),

      
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add, color: primaryBlue, size: 20.sp),
          label: Text(ProjectConstants.detailedEntryButtonText, style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold, fontSize: 14.sp)),
        ),
      ],
    );
  }

  