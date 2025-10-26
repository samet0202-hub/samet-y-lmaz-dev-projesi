 import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/category_title.dart';
import 'package:sagmal_mobil/feature/milk_records/widgets/last_record_tile.dart';

 Widget buildPastRecordsList() {
   
    return Column(
      children: [
       
        CategoryTitle(title: 'Ekim 2025'),
        LastRecordTile(amount: '245 LT', date: '16 Ekim 2025, 08:30'),
        LastRecordTile(amount: '230 LT', date: '14 Ekim 2025, 08:15'),
        LastRecordTile(amount: '252 LT', date: '12 Ekim 2025, 08:45'),
        
       
        CategoryTitle(title: 'Eylül 2025'),
        LastRecordTile(amount: '231 LT', date: '28 Eylül 2025, 08:20'),
        LastRecordTile(amount: '228 LT', date: '26 Eylül 2025, 08:05'),
      ],
    );
  }