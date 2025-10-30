 import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/payments/widgets/custom_filter_chip.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

Widget buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: [
          CustomFilterChip(label: ProjectConstants.customFilterChipsAll, isSelected: true),
           SizedBox(width: 8),
           CustomFilterChip(label: ProjectConstants.customFilterChipsOverdue, isSelected: false),
           SizedBox(width: 8),
           CustomFilterChip(label: ProjectConstants.customFilterChipsDueSoon, isSelected: false),
           SizedBox(width: 8),
           CustomFilterChip(label: ProjectConstants.customFilterChipsNoDebt, isSelected: false),
        ],
      ),
    );
  }
