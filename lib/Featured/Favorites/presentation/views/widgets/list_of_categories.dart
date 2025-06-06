import 'package:e_commerce/Featured/Home/presentation/models/category.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfCategories extends StatelessWidget {
  const ListOfCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: KsecondryColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Center(
                child: Text(
                  Category.categories[index].text,
                  style: Styles.textStyle12.copyWith(color: Colors.white),
                ),
              ),
            ),
          );
        },
        itemCount: Category.categories.length,
      ),
    );
  }
}
