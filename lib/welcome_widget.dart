import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.w),
      elevation: 8,
      shadowColor: Colors.black,
      color: const Color.fromRGBO(35, 107, 157, 1),
      child: Padding(
        padding: EdgeInsets.all(30.w),
        child: Row(
          children: [
            Image.asset(
              'assets/images/sagmal_mobil_only_icon.png',
              height: 12.h,
              width: 12.w,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                'SAĞMAL MOBİL UYGULAMASINA HOŞGELDİNİZ',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}