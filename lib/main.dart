import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sagmal_mobil/feature/home/page/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/profile/page/profil_page.dart';
import 'package:sagmal_mobil/feature/settings/page/settings_page.dart';

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
          home: const MainPage(),
        );
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.opacity_outlined, size: 28.sp),
            label: 'Süt kayıtları',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_outlined, size: 28.sp),
            label: 'Hayvan Takip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_outlined, size: 28.sp),
            label: 'Alacaklar',
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


