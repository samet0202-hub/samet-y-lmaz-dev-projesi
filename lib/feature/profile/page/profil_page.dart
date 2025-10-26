import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/profile/widgets/animal_inventory.dart';
import 'package:sagmal_mobil/feature/profile/widgets/milk_price.dart';
import 'package:sagmal_mobil/feature/profile/widgets/payment_information.dart';
import 'package:sagmal_mobil/feature/profile/widgets/user_details.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          children: [
            UserDetails(),
            20.verticalSpace,
            Text(
              ProjectConstants.bussinessAndInventoryTitle,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
            10.verticalSpace,

            Column(
              children: [
                AnimalInventory(),
                20.verticalSpace,
                MilkPrice(),
                20.verticalSpace,
                PaymentInformation(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
