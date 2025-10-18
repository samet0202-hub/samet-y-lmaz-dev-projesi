import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(Icons.lock, size: 32.sp, color: const Color.fromRGBO(35, 107, 157, 1)),
              title: Text('Şifre Değiştir', style: TextStyle(fontSize: 20.sp)),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.language, size: 32.sp, color: const Color.fromRGBO(35, 107, 157, 1)),
              title: Text('Dil Seçimi', style: TextStyle(fontSize: 20.sp)),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, size: 32.sp, color: Colors.red),
              title: Text('Çıkış Yap', style: TextStyle(fontSize: 20.sp)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}