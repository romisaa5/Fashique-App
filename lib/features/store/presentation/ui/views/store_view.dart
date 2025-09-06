import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/favorites/presentation/ui/widgets/list_of_categories.dart';
import 'package:e_commerce/features/store/presentation/ui/widgets/list_of_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5.h,
          children: [
            SizedBox(height: 20.h),
            AppTextFormField(
              suffixIcon: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kprimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
                onPressed: () {},
                label: Icon(Icons.search, color: Colors.white),
              ),
              hintText: 'Search in Store......',
            ),
            SizedBox(height: 10.h),
            ListOfCategories(),
            ListOfCards(),
          ],
        ),
      ),
    );
  }
}
