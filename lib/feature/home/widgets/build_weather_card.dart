import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/product/loops/weather_icon_chooser.dart';
import 'package:sagmal_mobil/product/models/weather/weather_main_model.dart';

Widget buildWeatherCard(WeatherMainModel havaDurumu, BuildContext context) {
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
