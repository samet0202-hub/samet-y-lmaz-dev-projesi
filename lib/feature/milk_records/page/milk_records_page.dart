import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/build_last_seven_day_datas.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/build_past_record_list.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/build_today_milk_yields.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/build_yield_summary.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/built_past_records_header.dart';


const Color primaryBlue = Color(0xFF1E88E5);
const Color darkBlue = Color(0xFF1565C0);
const Color textPrimary = Color(0xFF212121);
const Color textSecondary = Color(0xFF757575);
const Color lightGrey = Color(0xFFF5F5F5);
const Color colorGreen = Color(0xFF4CAF50);
const Color colorPurple = Color(0xFF9C27B0);
const Color colorOrange = Color(0xFFFF9800);


class MilkRecordsPage extends StatelessWidget {
  const MilkRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(bottom: 16.h),
        children: <Widget>[
         
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               buildTodayMilkYields(),
                SizedBox(height: 30.h),
                buildYieldSummary(),
                SizedBox(height: 30.h),
                buildLast7DayDatas(),
                SizedBox(height: 30.h),
                buildPastRecordsHeader(),
              ],
            ),
          ),
          buildPastRecordsList(),
        ],
      ),
    );
  }

}
