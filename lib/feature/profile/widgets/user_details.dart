import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/main.dart';


class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: primaryBlue, width: 3.w),
              ),
        
              child: Icon(Icons.person, size: 40.sp),
            ),
            30.horizontalSpace,
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "KULLANICI ADI",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Icon(Icons.edit, size: 20.sp, color: primaryBlue),
                  ],
                ),
                SizedBox(height: 8.h),
                Card(
                  color: Colors.blue.shade100,
                  child: SizedBox(
                    width: 150.w,
                    height: 30.h,
                    child: Center(
                      child: Text(
                        "Süt Üreticisi(çiftçi)",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: primaryBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "E-posta Adresi",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          subtitle: Text("user12345@gmail.com"),
          leading: Icon(Icons.email, color: primaryBlue, size: 30.sp),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Telefon Numarası",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          subtitle: Text("+90 555 555 55 55"),
          leading: Icon(Icons.phone, color: primaryBlue, size: 30.sp),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Adres",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          subtitle: Text("Narince köyü ,Adıyaman ,Türkiye"),
          leading: Icon(Icons.location_on, color: primaryBlue, size: 30.sp),
        ),
      ],
    );
  }
}
