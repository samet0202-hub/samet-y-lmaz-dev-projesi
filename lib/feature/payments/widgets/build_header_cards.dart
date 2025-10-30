import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/payments/page/payments_page.dart';
import 'package:sagmal_mobil/feature/payments/widgets/mini_status_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildHeaderCards(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 16, right: 16),
      decoration: const BoxDecoration(
        color: primaryBlue,
      ),
      child: Column(
        children: [
         
          Text(ProjectConstants.totalDebtText, style: TextStyle(color: Colors.white70, fontSize: 16)),
          Text(
            ProjectConstants.totalDebtValueText,
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
                title: ProjectConstants.customFilterChipsDueSoon,
                value: ProjectConstants.dueSoonValueText,
                color: lightBlue,
              )),
              const SizedBox(width: 12),
              Expanded(child: MiniStatusCard(
                title: ProjectConstants.customFilterChipsOverdue,
                value: ProjectConstants.overdueValueText,
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
        label:  Text(ProjectConstants.sendReminderButtonText, style: TextStyle(fontWeight: FontWeight.bold)),
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