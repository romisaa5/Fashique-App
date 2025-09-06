import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/features/favorites/presentation/ui/widgets/list_of_categories.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:e_commerce/features/home/presentation/ui/widgets/custom_list_item_sale_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.h,
          children: [
            SizedBox(height: 30.h),
            Text('Favorites', style: Styles.textStyle32),
            ListOfCategories(),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: .7,
              ),
              itemCount: Product.dummyProducts.length,
              itemBuilder: (context, index) {
                return CustomListItemSaleHome(
                  product: Product.dummyProducts[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
