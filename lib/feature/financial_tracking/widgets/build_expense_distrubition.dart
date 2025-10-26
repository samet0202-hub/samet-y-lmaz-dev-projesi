 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildExpenseDistrubition() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ProjectConstants.monthlyExpenseDistributionTitle,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: textPrimary),
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.1),
                  spreadRadius: 1.r,
                  blurRadius: 5.r,
                ),
              ],
            ),
            height: 300.h,
            child: Center(
              child: Text(
                'Halka Grafik (fl_chart) Yer Tutucusu',
                style: TextStyle(color: textSecondary, fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
