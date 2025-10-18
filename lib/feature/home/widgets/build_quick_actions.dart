import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/home/widgets/quick_action_button.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildQuickActions(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        ProjectConstants.quickActionsRowTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: textPrimary,
        ),
      ),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuickActionButton(
            context: context,
            label: ProjectConstants.quickActionButton1Title,
            icon: Icons.add_circle_outline,
            backgroundColor: lightGrey,
            iconColor: primaryBlue,
            onPressed: () {},
          ),
          QuickActionButton(
            context: context,
            label: ProjectConstants.quickActionButton2Title,
            icon: Icons.remove_circle_outline,
            backgroundColor: lightGrey,
            iconColor: Colors.redAccent,
            onPressed: () {},
          ),
          QuickActionButton(
            context: context,
            label: ProjectConstants.quickActionButton3Title,
            icon: Icons.sell_outlined,
            backgroundColor: lightGrey,
            iconColor: Colors.green,
            onPressed: () {},
          ),
        ],
      ),
    ],
  );
}
