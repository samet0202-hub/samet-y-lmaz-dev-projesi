import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildLast7DayDatas() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ProjectConstants.lastSevenDaysDataTitle,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: textPrimary),
        ),
        SizedBox(height: 12.h),
     
        Container(
          height: 180.h,
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(child: Text('7 Günlük Bar Grafik Yer Tutucusu', style: TextStyle(color: textSecondary, fontSize: 14.sp))),
        ),
      ],
    );
  }