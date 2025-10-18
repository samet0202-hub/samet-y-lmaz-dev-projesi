import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/constants/home_constants.dart';
import 'package:sagmal_mobil/feature/home/widgets/quick_action_button.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';
import 'package:sagmal_mobil/feature/home/widgets/transaction_tile.dart';
import 'package:sagmal_mobil/models/weather_model.dart';


String Sehir= "adıyaman";
  Future<WeatherModel>? havaDurumu;

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.openweathermap.org/data/2.5/',
      queryParameters: {
        'appid': 'b9e056dbe685d5c20fa55f5b6eb93c84',
        'units': 'metric',
        'lang': 'tr',
      },
    ),
  );
Future<WeatherModel> getWeather(String sehir) async {
    final response = await dio.get('weather', queryParameters: {'q': sehir});
    var model = weatherModelFromJson(response.toString());
    debugPrint(model.main?.temp.toString());
    return model;
  }
  


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    havaDurumu = getWeather(Sehir);
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
          SizedBox(height: 20.h),
          buildQuickActions(context),
          SizedBox(height: 20.h),
          buildRecentTransactions(),
        ],
      ),
    );
  }

  Column summaryScreen() {
    return Column(
      children: [
        
        Row(
          children: [
            Expanded(child: SummaryCard(
              title: HomeConstants().summaryCard1Title,
              value: HomeConstants().summaryCard1Value.toString(),
              icon: Icons.cloud_upload_outlined,
              iconColor: const Color.fromRGBO(35, 107, 157, 1),
              accentText: HomeConstants().summaryCard1AccentText,
            )),
            const SizedBox(width: 12),
            Expanded(child: SummaryCard(
              title: HomeConstants().summaryCard2Title,
              value: HomeConstants().summaryCard2value.toString(),
              icon: Icons.payments_outlined,
              iconColor: Colors.purple,
              accentText: HomeConstants().summaryCard2AccentText,
              accentColor: Colors.green,
            )),
          ],
        ),
        const SizedBox(height: 12),
        
        Row(
          children: [
            Expanded(child: SummaryCard(
              title: HomeConstants().summaryCard3Title,
              value: HomeConstants().summaryCard3Value.toString(),
              icon: Icons.show_chart_outlined,
              iconColor: Colors.amber,
              accentText: HomeConstants().summaryCard3AccentText,
              accentColor: Colors.red,
            )),
            const SizedBox(width: 12),
            Expanded(child: SummaryCard(
              title: HomeConstants().summaryCard4Title,
              value: HomeConstants().summaryCard4Value.toString(),
              icon: Icons.pets_outlined,
              iconColor: Colors.deepPurple,
              accentText: HomeConstants().summaryCard4AccentText,
              valueFontSize: 40, 
            )),
          ],
        ),
        
        
      ],
    );
  }
}

Widget buildQuickActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          HomeConstants().quickActionsRowTitle,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textPrimary),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickActionButton(
              context: context,
              label: HomeConstants().quickActionButton1Title,
              icon: Icons.add_circle_outline,
              backgroundColor: lightGrey,
              iconColor: primaryBlue,
              onPressed: () {},
            ),
            QuickActionButton(
              context: context,
              label: HomeConstants().quickActionButton2Title,
              icon: Icons.remove_circle_outline,
              backgroundColor: lightGrey,
              iconColor: Colors.redAccent,
              onPressed: () {},
            ),
            QuickActionButton(
              context: context,
              label: HomeConstants().quickActionButton3Title,
              icon: Icons.sell_outlined,
              backgroundColor: lightGrey,
              iconColor: Colors.green,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }



Widget buildRecentTransactions() {
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          HomeConstants().recentTransactionsTitle,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textPrimary),
        ),
        const SizedBox(height: 12),
         TransactionTile(
          title: HomeConstants().transactionTile1Title,
          subtitle: HomeConstants().transactionTile1Subtitle,
          amount: HomeConstants().transactionTile1AmountText,
          amountColor: primaryBlue,
          icon: Icons.cloud_upload_outlined,
          iconColor: primaryBlue,
        ),
        Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
        TransactionTile(
          title: HomeConstants().transactionTile2Title,
          subtitle: HomeConstants().transactionTile2Subtitle,
          amount: HomeConstants().transactionTile2AmountText,
          amountColor: Colors.green,
          icon: Icons.payments_outlined,
          iconColor: Colors.purple,
        ),
        Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
        TransactionTile(
          title: HomeConstants().transactionTile3Title,
          subtitle: HomeConstants().transactionTile3Subtitle,
          amount: HomeConstants().transactionTile3AmountText,
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
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                
              ),
              SizedBox(height: 8),
              Text(
                havaDurumu.main!.temp!.round().toString() + '°C',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white, fontSize: 48.sp),
              ),
              SizedBox(height: 8),
              Text(
                havaDurumu.weather![0].description!,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white70),
              ),
              SizedBox(height: 10.h),
              
            ],
          ),
        ],
      ),
    ),
  );
}

weatherIconChooser(String iconCode) {
  switch (iconCode) {
    case '01d':
      return Icons.wb_sunny;
    case '01n':
      return Icons.nights_stay;
    case '02d':
    case '02n':
      return Icons.cloud;
    case '03d':
    case '03n':
      return Icons.cloud_queue;
    case '04d':
    case '04n':
      return Icons.cloudy_snowing;
    case '09d':
    case '09n':
      return Icons.grain;
    case '10d':
    case '10n':
      return Icons.beach_access;
    case '11d':
    case '11n':
      return Icons.flash_on;
    case '13d':
    case '13n':
      return Icons.ac_unit;
    case '50d':
    case '50n':
      return Icons.blur_on;
    default:
      return Icons.help_outline;
  }
}
