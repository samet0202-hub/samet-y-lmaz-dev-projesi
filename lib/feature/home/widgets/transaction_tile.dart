import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';




class TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final Color amountColor;
  final IconData icon;
  final Color iconColor;

  const TransactionTile({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.amountColor,
    required this.icon,
    required this.iconColor,
  });
  
  @override 
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: iconColor.withOpacity(0.1),
        child: Icon(icon, color: iconColor, size: 20),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, color: textPrimary),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: textSecondary, fontSize: 12),
      ),
      trailing: Text(
        amount,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: amountColor,
          fontSize: 15,
        ),
      ),
    );
  }
}