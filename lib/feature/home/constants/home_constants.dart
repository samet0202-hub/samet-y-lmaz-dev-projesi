

class HomeConstants {
  String summaryCard1Title ='Bugün Sağılan Süt (LT)';
  int summaryCard1Value =245;
  String summaryCard1AccentText ='+Ekle';

  String summaryCard2Title ='Toplam Alacak (₺)';
  int summaryCard2value =8450;
  int summaryCard2AccentValue =12;
  String get summaryCard2AccentText => '↑ $summaryCard2AccentValue%';

  String summaryCard3Title ='Aylık Net Kâr (₺)';
  int summaryCard3Value =3300;
  int summaryCard3AccentValue =5;
  String get summaryCard3AccentText => '↓ $summaryCard3AccentValue%';

  String summaryCard4Title ='Hayvan Sayısı';
  int summaryCard4Value =28;
  int summaryCard4AccentValue =12;
  String get summaryCard4AccentText => '↓ $summaryCard4AccentValue LT/gün';

  String quickActionsRowTitle ='Hızlı İşlemler';
  String quickActionButton1Title ='Süt Kaydı';
  String quickActionButton2Title ='Gider Ekle';
  String quickActionButton3Title ='Yeni Satış';

  String recentTransactionsTitle = "Son işlemler"; 

  String transactionTile1Title= "Süt Kaydı";
  String tarih = DateTime.now().day.toString().padLeft(2, '0') + '.' + DateTime.now().month.toString().padLeft(2, '0') + '.' + DateTime.now().year.toString();
  String get transactionTile1Subtitle=> "Bugün $tarih";
  int transactionTile1Amount=185;
  String get transactionTile1AmountText => "+ $transactionTile1Amount LT";

  String transactionTile2Title= "Ödeme Alındı";
  String yesterday = (DateTime.now().day - 1).toString().padLeft(2, '0') + '.' + DateTime.now().month.toString().padLeft(2, '0') + '.' + DateTime.now().year.toString();
  String get transactionTile2Subtitle=> "Dün $yesterday";
  int transactionTile2Amount=1250;
  String get transactionTile2AmountText => "+ $transactionTile2Amount ₺";

  String transactionTile3Title= "Yem Alımı";
  String twoDaysAgo = (DateTime.now().day - 2).toString().padLeft(2, '0') + '.' + DateTime.now().month.toString().padLeft(2, '0') + '.' + DateTime.now().year.toString();
  String get transactionTile3Subtitle=> "2 gün önce $twoDaysAgo";
  int transactionTile3Amount=750;
  String get transactionTile3AmountText => "- $transactionTile3Amount ₺";









}