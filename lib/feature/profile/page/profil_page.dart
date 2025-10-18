import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/welcome_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeWidget(),
            CircleAvatar(
              radius: 50.w,
              backgroundImage: const AssetImage('assets/images/sagmal_mobil_only_icon.png'),
            ),
            SizedBox(height: 20.h),
            Text(
              'Kullanıcı Adı: Samet',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Text(
              'E-posta: samet@example.com',
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(height: 30.h),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit, size: 20.sp),
              label: Text('Profili Düzenle', style: TextStyle(fontSize: 18.sp)),
            ),
          ],
        ),
      ),
    );
  }
}