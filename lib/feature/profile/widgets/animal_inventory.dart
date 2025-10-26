import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagmal_mobil/feature/home/widgets/summary_card.dart';
import 'package:sagmal_mobil/product/constant/project_constant.dart';


class AnimalInventory extends StatelessWidget {
  const AnimalInventory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          10.verticalSpace,
          Row(
            children: [
              Text(
                ProjectConstants.animalInventoryTitle,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Icon(Icons.pets, color: primaryBlue, size: 20.sp),
            ],
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              animalInfoBuild(ProjectConstants.totalCattleValue, ProjectConstants.totalCattleLabel),
              animalInfoBuild(ProjectConstants.totalMilkCowsValue, ProjectConstants.totalMilkCowsLabel),
            ],
          ),
          10.verticalSpace,
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryBlue,
              fixedSize: Size(300.w, 40.h),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  ProjectConstants.upgradeInventoryButtonTitle,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.sp,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }

  SizedBox animalInfoBuild(int totalCattle, String label) {
    return SizedBox(
              width: 150.w,
              child: Card(
                color: primaryBlue,
                child: Column(
                  children: [
                    Text(
                      totalCattle.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25.sp,
                      ),
                    ),
                    Text(
                      label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}
