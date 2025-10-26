import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/feature/milk_records/page/milk_records_page.dart' hide primaryBlue, colorGreen, textPrimary;
import 'package:sagmal_mobil/feature/milk_records/widgets/yield_card.dart';

Widget buildYieldSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Verim Özeti',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: textPrimary),
        ),
        SizedBox(height: 15.h),
       
        Row(
          children: [
            Expanded(child: YieldCard(
              value: '12.5 LT',
              subtitle: 'Hayvan Başı Ortalama / Gün',
              icon: Icons.bar_chart_outlined,
              color: primaryBlue,
            )),
            SizedBox(width: 12.w),
            Expanded(child: YieldCard(
              value: '+5 LT',
              subtitle: 'Düne Göre Artış',
              icon: Icons.arrow_upward_outlined,
              color: colorGreen,
            )),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(child: YieldCard(
              value: '5,800',
              subtitle: 'Bu Ay Toplam Litre',
              icon: Icons.calendar_today_outlined,
              color: colorPurple,
            )),
            SizedBox(width: 12.w),
            Expanded(child: YieldCard(
              value: '1,420',
              subtitle: 'Bu Hafta Toplam Litre',
              icon: Icons.calendar_view_week_outlined,
              color: colorOrange,
            )),
          ],
        ),
      ],
    );
  }