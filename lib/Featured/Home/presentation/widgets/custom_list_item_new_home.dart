import 'package:e_commerce/Featured/Home/presentation/widgets/custom_container_widget.dart';
import 'package:e_commerce/core/widgets/custom_favorite_icon.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/stars_rate.dart';
import 'package:e_commerce/Featured/Home/presentation/models/product.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListItemNewHome extends StatelessWidget {
  const CustomListItemNewHome({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      width: 148.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 1,
            )
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        product.imageUrl,
                        height: 184.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    CustomcontainerWidget(
                      color: Colors.black87,
                        value: 'New',),
                    Positioned(
                      top: 155.h,
                      right: 5.w,
                      child: CustomFavoriteIcon()
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarsRate(),
                      Text(
                        product.category,
                        style: Styles.textStyle12.copyWith(color: Colors.grey),
                      ),
                      Text(
                        product.title,
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${product.price} \$',
                        style:
                            Styles.textStyle14.copyWith(color: KprimaryColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
