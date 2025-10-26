import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final Color amountColor;
  final Color iconColor;

  const TransactionTile({super.key, 
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.amountColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40.w,
        height: 40.w,
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w600, color: textPrimary, fontSize: 16.sp)),
      subtitle: Text(subtitle, style: TextStyle(color: textSecondary, fontSize: 13.sp)),
      trailing: Text(
        amount,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: amountColor,
          fontSize: 15.sp,
        ),
      ),
      onTap: () {
  
      },
    );
  }
}

