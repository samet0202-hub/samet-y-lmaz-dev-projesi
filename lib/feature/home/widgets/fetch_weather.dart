import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/build_weather_card.dart';
import 'package:sagmal_mobil/product/service/home/home_service.dart';

class FetchWeather extends StatelessWidget {
  const FetchWeather({super.key});

  @override
  Widget build(BuildContext context) {
    String sehir = "adıyaman";
    havaDurumu = getWeather(sehir);
    return FutureBuilder(
      future: havaDurumu,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var weather = snapshot.data;
          return buildWeatherCard(weather!, context);
        } else if (snapshot.hasError) {
          return Text(
            'Hata: Lütfen internet bağlantınızı kontrol edin.',
            style: TextStyle(color: Colors.red, fontSize: 16.sp),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
