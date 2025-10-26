import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/milk_records/page/milk_records_page.dart';
import 'package:sagmal_mobil/feature/payments/page/payments_page.dart' hide textPrimary, colorGreen;

Widget buildCustomerList() {
 
    final List<Map<String, dynamic>> customers = [
      {
        'name': 'Karaca Mandıra',
        'last_transaction': '2 gün önce',
        'amount': '4,500.00',
        'status': 'Vadesi Geçti',
        'status_color': colorRed,
        'amount_color': colorRed,
      },
      {
        'name': 'Hasan Toplayıcı',
        'last_transaction': '1 gün önce',
        'amount': '3,200.00',
        'status': 'Vadesi Yakın',
        'status_color': colorYellow,
        'amount_color': textPrimary,
      },
      {
        'name': 'Beyaz Süt A.Ş.',
        'last_transaction': '5 gün önce',
        'amount': '2,850.00',
        'status': 'Normal',
        'status_color': colorGreen,
        'amount_color': textPrimary,
      },
      {
        'name': 'Mehmet Usta',
        'last_transaction': '3 gün önce',
        'amount': '950.00',
        'status': 'Normal',
        'status_color': colorGreen,
        'amount_color': textPrimary,
      },
     
    ];

    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: customers.length,
      itemBuilder: (context, index) {
        final customer = customers[index];
        return CustomerTile(
          name: customer['name'],
          lastTransaction: customer['last_transaction'],
          amount: customer['amount'],
          status: customer['status'],
          statusColor: customer['status_color'],
          amountColor: customer['amount_color'],
        );
      },
    );
  }