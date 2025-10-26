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
  //
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
  static String tarih =
      '${DateTime.now().day.toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}';
  static String get transactionTile1Subtitle => "Bugün $tarih";
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
}
