/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/login_register/page/login_register.dart';
import 'package:sagmal_mobil/feature/main/page/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginRegisterPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 107, 157, 1),
      body: Center(
        child: Image.asset(
          'assets/images/sagmal_mobil_only_icon.png',
          width: 12.w,
          height: 12.h,
        ),
      ),
    );
  }
}
*/