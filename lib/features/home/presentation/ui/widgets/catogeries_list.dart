import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/features/home/data/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatogeriesList extends StatelessWidget {
  const CatogeriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 5.h,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: kSecondryColor,
                  foregroundColor: Colors.white,
                  child: Icon(Category.categories[index].icon, size: 30.sp),
                ),
                Text(
                  Category.categories[index].text,
                  style: Styles.textStyle12,
                ),
              ],
            ),
          );
        },
        itemCount: Category.categories.length,
      ),
    );
  }
}
