import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/widgets/build_expense_distrubition.dart';
import 'package:sagmal_mobil/feature/financial_tracking/widgets/build_recent_transactions.dart';
import 'package:sagmal_mobil/feature/financial_tracking/widgets/build_summary_section.dart';
import 'package:sagmal_mobil/feature/financial_tracking/widgets/build_uncategorized_warning.dart';

const Color primaryBlue = Color(0xFF1E88E5);
const Color darkBlue = Color(0xFF1565C0);
const Color colorGreen = Color(0xFF4CAF50);
const Color colorRed = Color(0xFFF44336);
const Color textPrimary = Color(0xFF212121);
const Color textSecondary = Color(0xFF757575);
const Color lightGrey = Color(0xFFF5F5F5);

const Color chartOrange = Color(0xFFFF9800);
const Color chartBlue = Color(0xFF2196F3);
const Color chartPurple = Color(0xFF9C27B0);
const Color chartRed = Color(0xFFF44336);

class FinancialTrackingPage extends StatelessWidget {
  const FinancialTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView(
        padding: EdgeInsets.only(top: 16.h, bottom: 80.h),
        children: <Widget>[
          buildSummarySection(context),
          SizedBox(height: 30.h),
          buildExpenseDistrubition(),
          SizedBox(height: 30.h),
          buildRecentTransactions(),
          SizedBox(height: 30.h),
          buildUncategorizedWarning(),
        ],
      ),
    );
  }
}
