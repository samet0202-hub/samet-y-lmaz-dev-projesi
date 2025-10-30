import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/feature/financial_tracking/widgets/summary_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildSummarySection(BuildContext context) {
    return Column(
      children: [
        //
        Center(
          child: Column(
            children: [
              Text(
                ProjectConstants.ftpSummarySectionTitle,
                style: TextStyle(fontSize: 16.sp, color: textSecondary.withValues(alpha:  0.8)),
              ),
              Text(
                ProjectConstants.summaryCard3Value.toString(),
                style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w900,
                  color: colorGreen,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: colorGreen.withValues(alpha:  0.1),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  ProjectConstants.ftpSummarySectionSubtitleText,
                  style: TextStyle(fontSize: 13.sp, color: colorGreen, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),

      
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              
              Expanded(
                child: SummaryCard(
                  title: 'Toplam Gelir',
                  value: '₺ 28.750',
                  color: colorGreen,
                ),
              ),
              SizedBox(width: 16.w),
          
              Expanded(
                child: SummaryCard(
                  title: 'Toplam Gider',
                  value: '₺ 24.200',
                  color: colorRed,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }