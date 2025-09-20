import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sagmal_mobil/pages/home_Page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SAĞMAL MOBİL',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: Color.fromRGBO(35, 107, 157, 1),
            ),
          ),
          home: const mainPagewidget(),
        );
      },
    );
  }
}

