 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/feature/financial_tracking/widgets/transaction_tile.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildRecentTransactions() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ProjectConstants.recentTransactionsTitle,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: textPrimary),
          ),
          SizedBox(height: 12.h),
        
          TransactionTile(
            title: 'Yem Alımı',
            subtitle: '15 Ekim 2024',
            amount: '-₺ 5.000',
            amountColor: colorRed,
            iconColor: chartOrange,
          ),
          TransactionTile(
            title: 'Veteriner',
            subtitle: '14 Ekim 2024',
            amount: '-₺ 1.200',
            amountColor: colorRed,
            iconColor: chartBlue,
          ),
          TransactionTile(
            title: 'İşçilik',
            subtitle: '12 Ekim 2024',
            amount: '-₺ 2.500',
            amountColor: colorRed,
            iconColor: chartPurple,
          ),
          TransactionTile(
            title: 'Akaryakıt',
            subtitle: '12 Ekim 2024',
            amount: '-₺ 800',
            amountColor: colorRed,
            iconColor: chartRed,
          ),
          SizedBox(height: 10.h),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                ProjectConstants.allTransactionsButtonTitle,
                style: TextStyle(fontWeight: FontWeight.bold, color: textPrimary, fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }