 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildUncategorizedWarning() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.amber.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.amber.shade700.withValues(alpha:0.5)),
      ),
      child: Row(
        children: [
          Icon(Icons.warning_amber_outlined, color: Colors.amber.shade700, size: 20.sp),
          SizedBox(width: 8.w),
          Text(
            'Kategorize Edilmemiş Giderler',
            style: TextStyle(color: Colors.amber.shade700, fontWeight: FontWeight.bold, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }