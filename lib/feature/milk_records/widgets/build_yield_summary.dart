import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/feature/milk_records/page/milk_records_page.dart' hide primaryBlue, colorGreen, textPrimary;
import 'package:sagmal_mobil/feature/milk_records/widgets/yield_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildYieldSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ProjectConstants.yieldSummaryTitle,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: textPrimary),
        ),
        SizedBox(height: 15.h),
       
        Row(
          children: [
            Expanded(child: YieldCard(
              value: ProjectConstants.averagePerAnimalPerDayValueText,
              subtitle: ProjectConstants.averagePerAnimalPerDayLabel,
              icon: Icons.bar_chart_outlined,
              color: primaryBlue,
            )),
            SizedBox(width: 12.w),
            Expanded(child: YieldCard(
              value: ProjectConstants.increaseFromYesterdayValueText,
              subtitle: ProjectConstants.increaseFromYesterdayLabel,
              icon: Icons.arrow_upward_outlined,
              color: colorGreen,
            )),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(child: YieldCard(
              value: ProjectConstants.totalMonthlyYieldValueText,
              subtitle: ProjectConstants.totalMonthlyYieldText,
              icon: Icons.calendar_today_outlined,
              color: colorPurple,
            )),
            SizedBox(width: 12.w),
            Expanded(child: YieldCard(
              value: ProjectConstants.totalWeeklyYieldValueText,
              subtitle: ProjectConstants.totalWeeklyYieldText,
              icon: Icons.calendar_view_week_outlined,
              color: colorOrange,
            )),
          ],
        ),
      ],
    );
  }