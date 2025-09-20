import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/hosgeldin_widget.dart';

import 'package:sagmal_mobil/pages/profil_page.dart';
import 'package:sagmal_mobil/pages/settings_page.dart';


class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HosgeldinWidget(),
          SizedBox(height: 20.h),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            elevation: 4,
            shadowColor: Colors.black,
            child: ListTile(
              leading: Icon(Icons.info, size: 40.sp, color: const Color.fromRGBO(35, 107, 157, 1)),
              title: Text(
                'Uygulama Hakkında',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'SAĞMAL MOBİL uygulaması, süt üretim süreçlerinizi kolayca yönetmenizi sağlar. Sağım verilerini hızlıca kaydedin ve analiz edin.',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





// Ayarlar Sayfası Widget'ı


// Ana Sayfa Scaffold ve Navbar
class mainPagewidget extends StatefulWidget {
  const mainPagewidget({super.key});

  @override
  State<mainPagewidget> createState() => _mainPagewidgetState();
}

class _mainPagewidgetState extends State<mainPagewidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeContent(),
    const ProfileContent(),
    const SettingsContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(35, 107, 157, 1),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28.sp),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28.sp),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 28.sp),
            label: 'Ayarlar',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SAĞMAL', style: TextStyle(fontSize: 20.sp)),
            Image.asset(
              'assets/images/sagmalmobilonlyicon.png',
              height: 45.h,
              width: 45.w,
            ),
            Text('MOBİL', style: TextStyle(fontSize: 20.sp)),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
