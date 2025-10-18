import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/build_quick_actions.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_scree.dart';
import 'package:sagmal_mobil/feature/home/widgets/transaction_tile.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';
import 'package:sagmal_mobil/product/loops/weather_icon_chooser.dart';
import 'package:sagmal_mobil/product/models/weather_model.dart';
import 'package:sagmal_mobil/product/service/home/home_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String sehir = "adıyaman";
  // You should set your project constant here
  @override
  Widget build(BuildContext context) {
    havaDurumu = getWeather(sehir);
    return SingleChildScrollView(
      child: Column(
        children: [
          FutureBuilder(
            future: havaDurumu,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var weather = snapshot.data;
                return buildWeatherCard(weather!, context);
              } else if (snapshot.hasError) {
                return Text('Hata: ${snapshot.error}');
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          summaryScreen(),
          SizedBox(height: 20.h), // 20.verticalSpace
          buildQuickActions(context),
          SizedBox(height: 20.h),
          buildRecentTransactions(),
        ],
      ),
    );
  }
}

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

Widget buildWeatherCard(WeatherModel havaDurumu, BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    color: const Color.fromRGBO(35, 107, 157, 1),
    margin: const EdgeInsets.all(16),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            weatherIconChooser(havaDurumu.weather![0].icon!),
            size: 64.sp,
            color: Colors.white,
          ),
          SizedBox(width: 40.w),
          Column(
            children: [
              Text(
                havaDurumu.name!,
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                '${havaDurumu.main!.temp!.round()}°C',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontSize: 48.sp,
                ),
              ),
              SizedBox(height: 8),
              Text(
                havaDurumu.weather![0].description!,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white70),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ],
      ),
    ),
  );
}
