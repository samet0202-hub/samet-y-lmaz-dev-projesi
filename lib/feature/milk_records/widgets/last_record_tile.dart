import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/milk_records/page/milk_records_page.dart';

class LastRecordTile extends StatelessWidget {
  final String amount;
  final String date;

  const LastRecordTile({super.key, required this.amount, required this.date});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0),
      title: Text(
        amount,
        style: TextStyle(fontWeight: FontWeight.bold, color: textPrimary, fontSize: 16.sp),
      ),
      subtitle: Text(
        date,
        style: TextStyle(color: textSecondary, fontSize: 13.sp),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.edit_outlined, color: textSecondary),
        onPressed: () {
         
        },
      ),
      onTap: () {
      
      },
    );
  }
}