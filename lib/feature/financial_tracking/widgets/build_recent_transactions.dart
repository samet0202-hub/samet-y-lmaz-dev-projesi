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
            title: ProjectConstants.expenseCategory1,
            subtitle: ProjectConstants.expenseCategory1Date,
            amount: ProjectConstants.expenseCategory1AmountText,
            amountColor: colorRed,
            iconColor: chartOrange,
          ),
          TransactionTile(
            title: ProjectConstants.expenseCategory2,
            subtitle: ProjectConstants.expenseCategory2Date,
            amount: ProjectConstants.expenseCategory2AmountText,
            amountColor: colorRed,
            iconColor: chartBlue,
          ),
          TransactionTile(
            title: ProjectConstants.expenseCategory3,
            subtitle: ProjectConstants.expenseCategory3Date,
            amount: ProjectConstants.expenseCategory3AmountText,
            amountColor: colorRed,
            iconColor: chartPurple,
          ),
          TransactionTile(
            title: ProjectConstants.expenseCategory4,
            subtitle: ProjectConstants.expenseCategory4Date,
            amount: ProjectConstants.expenseCategory4AmountText,
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