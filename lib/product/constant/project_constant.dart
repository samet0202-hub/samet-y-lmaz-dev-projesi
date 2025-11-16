
import 'dart:ui';

class ProjectConstants {

static const Color primaryBlue = Color(0xFF1E88E5);
static const Color darkBlue = Color(0xFF1565C0);
static const Color textPrimary = Color(0xFF212121);
static const Color textSecondary = Color(0xFF757575);
static const Color lightGrey = Color(0xFFF5F5F5);
static const Color colorGreen = Color(0xFF4CAF50);
static const Color colorPurple = Color(0xFF9C27B0);
static const Color colorOrange = Color(0xFFFF9800);

  static String summaryCard1Title = 'Bugün Sağılan Süt (LT)';
  static int summaryCard1Value = 245;
  static String summaryCard1AccentText = '+Ekle';
  
  static String summaryCard2Title = 'Toplam Alacak (₺)';
  static int summaryCard2value = 8450;
  static int summaryCard2AccentValue = 12;
  static String get summaryCard2AccentText => '↑ $summaryCard2AccentValue%';

  static String summaryCard3Title = 'Aylık Net Kâr (₺)';
  static int summaryCard3Value = 3300;
  static int summaryCard3AccentValue = 5;
  static String get summaryCard3AccentText => '↓ $summaryCard3AccentValue%';

  static String summaryCard4Title = 'Hayvan Sayısı';
  static int summaryCard4Value = 28;
  static int summaryCard4AccentValue = 12;
  static String get summaryCard4AccentText =>
      '↓ $summaryCard4AccentValue LT/gün';

  static String quickActionsRowTitle = 'Hızlı İşlemler';
  static String quickActionButton1Title = 'Süt Kaydı';
  static String quickActionButton2Title = 'Gider Ekle';
  static String quickActionButton3Title = 'Yeni Satış';

  static String recentTransactionsTitle = "Son işlemler";

  static String transactionTile1Title = "Süt Kaydı";
  static String date =
      '${DateTime.now().day.toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}';
  static String get transactionTile1Subtitle => "Bugün $date";
  static int transactionTile1Amount = 185;
  static String get transactionTile1AmountText =>
      "+ $transactionTile1Amount LT";

  static String transactionTile2Title = "Ödeme Alındı";
  static String yesterday =
      '${(DateTime.now().day - 1).toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}';
  static String get transactionTile2Subtitle => "Dün $yesterday";
  static int transactionTile2Amount = 1250;
  static String get transactionTile2AmountText => "+ $transactionTile2Amount ₺";

  static String transactionTile3Title = "Yem Alımı";
  static String twoDaysAgo =
      '${(DateTime.now().day - 2).toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}';
  static String get transactionTile3Subtitle => "2 gün önce $twoDaysAgo";
  static int transactionTile3Amount = 750;
  static String get transactionTile3AmountText => "- $transactionTile3Amount ₺";

  static String bussinessAndInventoryTitle = "İşletme ve Envanter yönetimi";
  static String upgradeInventoryButtonTitle = "Envanteri Güncelle";
  static String animalInventoryTitle = "Hayvan Envanteri";
  static String totalCattleLabel = "Toplam Büyükbaş";
  static int totalCattleValue = 28;
  static String totalMilkCowsLabel = "Toplam Süt İnekleri";
  static int totalMilkCowsValue = 15;

  static String monthlyExpenseDistributionTitle = "Aylık Gider Dağılımı";
  static String allTransactionsButtonTitle = "TÜM İŞLEMLERİ GÖR >";
  
 static String expenseCategory1 = "Yem";
 static String expenseCategory2 = "İşçilik";
 static String expenseCategory3 = "Veteriner";
 static String expenseCategory4 = "Akaryakıt";

 static String expenseCategory1Date = "bugün $date";
 static String expenseCategory2Date = "dün $yesterday";
 static String expenseCategory3Date = "2 gün önce $twoDaysAgo";
 static String expenseCategory4Date = "dün $yesterday";

 static int expenseCategory1Amount = 5000;
 static int expenseCategory2Amount = 2500;
 static int expenseCategory3Amount = 1200;
 static int expenseCategory4Amount = 800;

 static String get expenseCategory1AmountText => "- $expenseCategory1Amount ₺";
 static String get expenseCategory2AmountText => "- $expenseCategory2Amount ₺";
 static String get expenseCategory3AmountText => "- $expenseCategory3Amount ₺";
 static String get expenseCategory4AmountText => "- $expenseCategory4Amount ₺";

 static String ftpSummarySectionTitle = "Aylık Net Kâr (₺)";
 static int ftpSummarySectionSubtitleValue = 15;
 static String get ftpSummarySectionSubtitleText =>
      "Önceki Aya Göre +%$ftpSummarySectionSubtitleValue";

 static String uncategorizedExpenseWarningText = "Kategorize Edilmemiş Giderler";
 
 static String lastSevenDaysDataTitle = "Son 7 Günlük Veriler";

 static String todayMilkYieldLabel = "Bugünün Süt Verimi (LT)";
 static  String todayMilkYieldSubtitle = "Günlük toplanan süt miktarı";
 static String enterMilkYieldHintText = "Günlük süt miktarını giriniz";
 static String literAbbreviation = "LT";
 static String completeRecordButtonText = "Kaydı Tamamla";
 static String detailedEntryButtonText = "Hayvan Bazlı Detaylı Giriş";

 static String yieldSummaryTitle = "Verim Özeti";
 static String averagePerAnimalPerDayLabel = "Hayvan Başı Ortalama / Gün";
 static double averagePerAnimalPerDayValue = 12.5 ;
 static String get averagePerAnimalPerDayValueText => "$averagePerAnimalPerDayValue LT";
 static String increaseFromYesterdayLabel = "Düne Göre Artış";
 static int increaseFromYesterdayValue = 5;
 static String get increaseFromYesterdayValueText => "+$increaseFromYesterdayValue LT";

static String totalMonthlyYieldText = "Bu Ay Toplam Litre";
static int totalMonthlyYield = 5800;
static String get totalMonthlyYieldValueText => "$totalMonthlyYield LT";
static String totalWeeklyYieldText = "Bu Hafta Toplam Litre";
static int totalWeeklyYield = 1420;
static String get totalWeeklyYieldValueText => "$totalWeeklyYield LT";

static String pastRecordsText = "Geçmiş Kayıtlar";

static String customFilterChipsAll = "Tümü";
static String customFilterChipsOverdue = "Vadesi Geçen";
static String customFilterChipsDueSoon = "Vadesi Yakın";
static String customFilterChipsNoDebt = "Sıfır Borçlu";

static String totalDebtText = "Toplam Alacak (₺)";
static int totalDebtValue = 18750;
static String get totalDebtValueText => "₺ $totalDebtValue";
static int dueSoonValue = 3200;
static String get dueSoonValueText => "₺ $dueSoonValue";
static int overdueValue = 1850;
static String get overdueValueText => "₺ $overdueValue";
static String sendReminderButtonText = "Hatırlatıcı Gönder";

static String milkPriceTitle = "Süt Fiyatı";
static String milkPriceUnit = "₺ / LT";
static String enterCurrentMilkPriceHintText = "Güncel Süt Fiyatını Giriniz";

static String paymentInformationTitle = "Ödeme Bilgileri";
static String bankAccountPlaceholder = "TR00 0000 0000 0000 0000 0000 00";
static String updateButtonText = "Güncelle";

static String userDetailsTitle = "Kullanıcı Bilgileri";
static String jobTitle = "Süt Üreticisi(çiftçi)";
static String emailLabel = "E-posta Adresi";
static String emailValue = "user12345@gmail.com";
static String phoneLabel = "Telefon Numarası";
static String phoneValue = "+90 555 555 55 55";
static String addressLabel = "Adres";
static String addressValue = "Narince köyü ,Adıyaman ,Türkiye";
}