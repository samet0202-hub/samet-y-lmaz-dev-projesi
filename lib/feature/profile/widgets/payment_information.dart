import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';

class PaymentInformation extends StatelessWidget {
  const PaymentInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ödeme Bilgileri",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.payment, color: primaryBlue),
              ],
            ),
          ),
          10.verticalSpace,
                
          TextField(
            decoration: InputDecoration(
              labelText: "TR00 0000 0000 0000 0000 0000 00",
              border: OutlineInputBorder(),
            ),
          ),
          10.verticalSpace,
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryBlue,
              fixedSize: Size(300.w, 40.h),
            ),
            child: Text("Güncelle",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                )),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }
}
