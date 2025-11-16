import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/main/page/main_page.dart';
import 'package:sagmal_mobil/router/app_router.dart';

const Color primaryBlue = Color(0xFF1E88E5);
const Color darkBlue = Color(0xFF1565C0);
const Color lightGrey = Color(0xFFF5F5F5);
const Color textPrimary = Color(0xFF212121);
const Color textSecondary = Color(0xFF757575);
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
        return MaterialApp.router(
          
           routerConfig: router,
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
      
        );
      },
    );
  }
}

