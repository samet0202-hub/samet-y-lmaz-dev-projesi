import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';

Widget buildPastRecordsHeader() {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Geçmiş Kayıtlar',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: textPrimary),
          ),
          IconButton(
            icon: const Icon(Icons.filter_list_outlined, color: textSecondary),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }