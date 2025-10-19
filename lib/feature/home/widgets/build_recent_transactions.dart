import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/transaction_tile.dart';
import 'package:sagmal_mobil/main.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildRecentTransactions() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        ProjectConstants.recentTransactionsTitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: textPrimary,
        ),
      ),
      const SizedBox(height: 12),
      TransactionTile(
        title: ProjectConstants.transactionTile1Title,
        subtitle: ProjectConstants.transactionTile1Subtitle,
        amount: ProjectConstants.transactionTile1AmountText,
        amountColor: primaryBlue,
        icon: Icons.cloud_upload_outlined,
        iconColor: primaryBlue,
      ),
      Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
      TransactionTile(
        title: ProjectConstants.transactionTile2Title,
        subtitle: ProjectConstants.transactionTile2Subtitle,
        amount: ProjectConstants.transactionTile2AmountText,
        amountColor: Colors.green,
        icon: Icons.payments_outlined,
        iconColor: Colors.purple,
      ),
      Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
      TransactionTile(
        title: ProjectConstants.transactionTile3Title,
        subtitle: ProjectConstants.transactionTile3Subtitle,
        amount: ProjectConstants.transactionTile3AmountText,
        amountColor: Colors.redAccent,
        icon: Icons.shopping_cart_outlined,
        iconColor: Colors.red,
      ),
    ],
  );
}
