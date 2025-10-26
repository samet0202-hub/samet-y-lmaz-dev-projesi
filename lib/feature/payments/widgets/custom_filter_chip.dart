import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';

class CustomFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CustomFilterChip({super.key, 
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
    
      },
      selectedColor: primaryBlue,
      backgroundColor: lightGrey,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : textSecondary,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
    );
  }
}
