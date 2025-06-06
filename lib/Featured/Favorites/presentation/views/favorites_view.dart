import 'package:e_commerce/Featured/Favorites/presentation/views/widgets/list_of_categories.dart';
import 'package:e_commerce/Featured/Home/presentation/models/product.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_list_item_sale_home.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesView extends StatelessWidget {
  FavoritesView({super.key});
  final Product product = Product(
    id: 1,
    title: 't_shirt',
    imageUrl: 'assets/images/photo.png',
    price: 120,
    discountValue: 30,
  );
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
              physics:
                  NeverScrollableScrollPhysics(), // عشان الـ ScrollView الخارجي هو اللي يتحكم
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الأعمدة
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: .6, // نسبة العرض للطول
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return CustomListItemSaleHome(product: product);
              },
            ),
          ],
        ),
      ),
    );
  }
}
