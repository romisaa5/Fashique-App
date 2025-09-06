import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:e_commerce/features/home/presentation/ui/widgets/custom_list_item_sale_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListSaleItems extends StatelessWidget {
  const CustomListSaleItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Product.dummyProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: CustomListItemSaleHome(
              product: Product.dummyProducts[index],
            ),
          );
        },
      ),
    );
  }
}
