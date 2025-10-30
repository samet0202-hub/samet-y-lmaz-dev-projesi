import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';

class MilkPrice extends StatelessWidget {
  const MilkPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ProjectConstants.milkPriceTitle,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.account_balance_wallet,
                color: primaryBlue,
              ),
            ],
          ),
          10.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  10.horizontalSpace,
                  Text(ProjectConstants.milkPriceUnit, style: TextStyle(fontSize: 20.sp)),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ProjectConstants.enterCurrentMilkPriceHintText,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      minimumSize: Size(50.w, 50.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8.0.r,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        20.verticalSpace,
                        Icon(Icons.save, color: Colors.white),
                        20.verticalSpace,
                      ],
                    ),
                  ),
                  10.horizontalSpace,
                ],
              ),
              20.verticalSpace,
            ],
          ),
        ],
      ),
    );
  }
}
