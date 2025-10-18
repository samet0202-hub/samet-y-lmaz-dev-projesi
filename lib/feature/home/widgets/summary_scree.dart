import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Column summaryScreen() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: SummaryCard(
              title: ProjectConstants.summaryCard1Title,
              value: ProjectConstants.summaryCard1Value.toString(),
              icon: Icons.cloud_upload_outlined,
              iconColor: const Color.fromRGBO(35, 107, 157, 1),
              accentText: ProjectConstants.summaryCard1AccentText,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: SummaryCard(
              title: ProjectConstants.summaryCard2Title,
              value: ProjectConstants.summaryCard2value.toString(),
              icon: Icons.payments_outlined,
              iconColor: Colors.purple,
              accentText: ProjectConstants.summaryCard2AccentText,
              accentColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),

      Row(
        children: [
          Expanded(
            child: SummaryCard(
              title: ProjectConstants.summaryCard3Title,
              value: ProjectConstants.summaryCard3Value.toString(),
              icon: Icons.show_chart_outlined,
              iconColor: Colors.amber,
              accentText: ProjectConstants.summaryCard3AccentText,
              accentColor: Colors.red,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: SummaryCard(
              title: ProjectConstants.summaryCard4Title,
              value: ProjectConstants.summaryCard4Value.toString(),
              icon: Icons.pets_outlined,
              iconColor: Colors.deepPurple,
              accentText: ProjectConstants.summaryCard4AccentText,
              valueFontSize: 40,
            ),
          ),
        ],
      ),
    ],
  );
}
