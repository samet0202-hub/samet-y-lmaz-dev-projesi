import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagmal_mobil/feature/financial_tracking/page/financial_tracking_page.dart';
import 'package:sagmal_mobil/feature/home/page/home_page.dart';


const Color darkBlue = Color(0xFF1565C0);
const Color primaryBlue = Color(0xFF1E88E5);
const Color textPrimary = Color(0xFF212121);



var formStyleFocus = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0.r),
  borderSide: const BorderSide(
    color: darkBlue,
    width: 2.0,
  ),
);

var formStyleEnable = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0.r),
  borderSide: BorderSide(
    color: Colors.grey.shade300,
    width: 1.0,
  ),
);

InputDecoration createFormElement(String label, [int? radius]) {
  return InputDecoration(
    labelText: label,
    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.grey.shade600),
    floatingLabelBehavior: FloatingLabelBehavior.never, // Label'ı yukarı kaldırmaz
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
    
    filled: true,
    fillColor: Colors.white,
    
    focusedBorder: formStyleFocus,
    enabledBorder: formStyleEnable,
    
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular((radius ?? 10).r),
    ),
  );
}



class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});
  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    final screenHeight = MediaQuery.of(context).size.height;
    
    
    const double fixedHeaderHeight = 500; 
    
    final double tabBarViewHeight = 
        (screenHeight - fixedHeaderHeight.h) > 350.h 
        ? (screenHeight - fixedHeaderHeight.h) 
        : 350.h;


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              40.verticalSpace,
             
              CircleAvatar(
                radius: 50.r,
               
                backgroundImage: const AssetImage('assets/images/sagmal_mobil_only_icon.png'), 
              ),
              10.verticalSpace,

              
              Text(
                'Sağmal Mobil',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: textPrimary
                ),
              ),
              5.verticalSpace,

             
              Text(
                'Süt üreticilerini ve alıcılarını bir araya getiren platform.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromRGBO(21, 21, 21, 0.6),
                ),
              ),
              30.verticalSpace,


              Container(
                height: 55.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(color: Colors.grey.shade300, width: 1.0.w)
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black87,
                  indicator: BoxDecoration(
                    color: darkBlue,
                    
                    borderRadius: BorderRadius.all(Radius.circular(30.r)),
                   
                  ),
                  tabs: const [
                    Tab(text: 'Giriş Yap'),
                    Tab(text: 'Kayıt Ol'),
                  ],
                ),
              ),
              
              20.verticalSpace, 
              SizedBox( 
                height: tabBarViewHeight, 
                child: TabBarView(
                  controller: _tabController,
                  children: [
                   
                    _LoginPageContent(context: context), 
                    
                    
                    _RegisterPageContent(context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _LoginPageContent extends StatelessWidget {
  final BuildContext context;
  const _LoginPageContent({required this.context});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: createFormElement('Email'),
        ),
        15.verticalSpace,
        TextField(
          obscureText: true,
          decoration: createFormElement('Şifre'),
        ),
        20.verticalSpace,
        
        
        ElevatedButton(
          onPressed: () {
            context.go('/home');
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 55.h), 
            foregroundColor: Colors.white, 
            backgroundColor: darkBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          child: Text(
            "Giriş Yap",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold), 
          ),
        ),
        
        20.verticalSpace,
        const Divider(),
        20.verticalSpace,

        // Sosyal Medya Butonları
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.g_mobiledata, size: 30.sp, color: darkBlue),
          label: Text("Google ile Giriş Yap", style: TextStyle(fontSize: 16.sp, color: textPrimary)),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50.h),
            backgroundColor: Colors.white,
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r), side: BorderSide(color: Colors.grey.shade300)),
          ),
        ),
        10.verticalSpace,
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.facebook, size: 30.sp, color: primaryBlue),
          label: Text("Facebook ile Giriş Yap", style: TextStyle(fontSize: 16.sp, color: textPrimary)),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50.h),
            backgroundColor: Colors.white,
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r), side: BorderSide(color: Colors.grey.shade300)),
          ),
        ),
      ],
    );
  }
}

// 2. KAYIT OL İÇERİĞİ
class _RegisterPageContent extends StatelessWidget {
  final BuildContext context;
  const _RegisterPageContent({required this.context});

  // Rol Seçiminde kullanılan Card widget'ı
  Widget _buildRoleCard({required String title, required String subtitle, required IconData icon, required bool isSelected}) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: isSelected ? darkBlue.withValues(alpha : 0.1) : Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: isSelected ? darkBlue : Colors.grey.shade300, width: isSelected ? 2.w : 1.w),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30.sp, color: isSelected ? darkBlue : Colors.grey),
          SizedBox(height: 5.h),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
          Text(subtitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: textSecondary)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Kayıt içeriği uzun olabileceği için SingleChildScrollView ile sarılı
    return SingleChildScrollView( 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30.h), // İçerik başlangıç boşluğu
          TextField(
            decoration: createFormElement('Ad Soyad'),
          ),
          15.verticalSpace,
          TextField(
           decoration: createFormElement('Email'),
          ),
          15.verticalSpace,
          TextField(
            obscureText: true,
            decoration: createFormElement('Şifre'),
          ),
          15.verticalSpace,
          TextField(
            decoration: createFormElement('Köy/Mahalle'),
          ),
          20.verticalSpace,

          // 🔹 Rol Seçimi Başlığı
          Text('Lütfen Rolünüzü Seçin', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: textPrimary)),
          10.verticalSpace,

          // 🔹 Rol Seçimi Kartları
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildRoleCard(
                  title: 'Üretici',
                  subtitle: 'Süt Verimi Takibi',
                  icon: Icons.ac_unit, // Buraya inek ikonu gelebilir
                  isSelected: false,
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: _buildRoleCard(
                  title: 'Tedarikçi',
                  subtitle: 'Borç/Alacak Takibi',
                  icon: Icons.local_shipping_outlined,
                  isSelected: true, // Örnek olarak seçili
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: _buildRoleCard(
                  title: 'Mandıra',
                  subtitle: 'Büyük Alım Kaydı',
                  icon: Icons.factory_outlined,
                  isSelected: false,
                ),
              ),
            ],
          ),
          
          30.verticalSpace,
          // Kayıt Ol Butonu
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 55.h), 
              foregroundColor: Colors.white, 
              backgroundColor: darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            child: Text(
              "Kayıt Ol",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold), 
            ),
          ),
        ],
      ),
    );
  }
}