import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/feature/home/page/home_page.dart';
import 'package:sagmal_mobil/feature/milk_records/page/milk_records_page.dart';
import 'package:sagmal_mobil/feature/profile/page/profil_page.dart';
import 'package:sagmal_mobil/feature/payments/page/payments_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
   
    const PaymentsPage(),
    const MilkRecordsPage(),
    const HomePage(),
    const FinancialTrackingPage(),
    const ProfilePage()
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
            icon: Icon(Icons.payments_outlined, size: 28.sp),
            label: 'Alacaklar',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.opacity_outlined, size: 28.sp),
            label: 'Süt kayıtları',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28.sp),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long, size: 28.sp),
            label: 'Finansal Takip',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28.sp),
            label: 'Profil',
          ),
          
        ],
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
              'assets/images/sagmal_mobil_only_icon.png',
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
