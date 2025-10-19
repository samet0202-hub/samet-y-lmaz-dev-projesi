import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/build_quick_actions.dart';
import 'package:sagmal_mobil/feature/home/widgets/build_recent_transactions.dart';
import 'package:sagmal_mobil/feature/home/widgets/fetch_weather.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_scree.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            FetchWeather(),
            10.verticalSpace,
            summaryScreen(),
            20.verticalSpace,
            buildQuickActions(context),
            20.verticalSpace,
            buildRecentTransactions(),
          ],
        ),
      ),
    );
  }
}
