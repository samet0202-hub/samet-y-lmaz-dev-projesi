 import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/payments/widgets/custom_filter_chip.dart';

Widget buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: const [
          CustomFilterChip(label: 'Tümü', isSelected: true),
          SizedBox(width: 8),
          CustomFilterChip(label: 'Vadesi Geçen', isSelected: false),
          SizedBox(width: 8),
          CustomFilterChip(label: 'Vadesi Yakın', isSelected: false),
          SizedBox(width: 8),
          CustomFilterChip(label: 'Sıfır Borçlu', isSelected: false),
        ],
      ),
    );
  }
