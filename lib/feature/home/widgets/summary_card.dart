import 'package:flutter/material.dart';

const Color primaryBlue = Color(0xFF1E88E5); // Açık mavi (Uygulama genel rengi)
const Color darkBlue = Color(0xFF1565C0); // Koyu mavi
const Color lightGrey = Color(0xFFF5F5F5); // Kart arkaplanları için
const Color textPrimary = Color(0xFF212121);
const Color textSecondary = Color(0xFF757575);

class SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;
  final String? accentText;
  final Color accentColor;
  final double valueFontSize;

  const SummaryCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
    this.accentText,
    this.accentColor = textSecondary,
    this.valueFontSize = 48,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white, // Kart rengini ayarladım
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: lightGrey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: iconColor.withValues(alpha: 0.1),
                  child: Icon(icon, color: iconColor, size: 14),
                ),
                if (accentText != null)
                  Text(
                    accentText!,
                    style: TextStyle(
                      fontSize: 12,
                      color: accentColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: valueFontSize,
                fontWeight: FontWeight.bold,
                color: textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(fontSize: 13, color: textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
