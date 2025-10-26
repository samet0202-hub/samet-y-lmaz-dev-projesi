import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/payments/page/payments_page.dart';
import 'package:sagmal_mobil/feature/payments/widgets/mini_status_card.dart';

Widget buildHeaderCards(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 16, right: 16),
      decoration: const BoxDecoration(
        color: primaryBlue,
      ),
      child: Column(
        children: [
         
          const Text('Toplam Alacak', style: TextStyle(color: Colors.white70, fontSize: 16)),
          const Text(
            '₺ 18,750.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
         
          Row(
            children: [
              Expanded(child: MiniStatusCard(
                title: 'Vadesi Yakın',
                value: '₺ 3,200',
                color: lightBlue,
              )),
              const SizedBox(width: 12),
              Expanded(child: MiniStatusCard(
                title: 'Vadesi Geçen',
                value: '₺ 1,850',
                color: colorRed,
              )),
            ],
          ),
          const SizedBox(height: 16),
          
          buildReminderButton(),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

Widget buildReminderButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
        
        },
        icon: const Icon(Icons.send_outlined, size: 20),
        label: const Text('Hatırlatıcı Gönder', style: TextStyle(fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: primaryBlue,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
      ),
    );
  }