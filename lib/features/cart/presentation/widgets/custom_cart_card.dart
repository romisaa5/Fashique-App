import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/features/cart/presentation/widgets/quantity_with_price.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartCard extends StatelessWidget {
  final Product product;
  final VoidCallback onQuantityChanged;

  const CustomCartCard({
    super.key,
    required this.product,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              product.imageUrl,
              width: 105.w,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Styles.textStyle16.copyWith(
                            color: const Color(0xff222222),
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      PopupMenuButton<String>(
                        color: Colors.white,
                        onSelected: (value) {
                          if (value == 'favorite') {
                          } else if (value == 'delete') {}
                        },
                        itemBuilder:
                            (context) => [
                              const PopupMenuItem(
                                value: 'favorite',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Add to favorites'),
                                  ],
                                ),
                              ),
                              const PopupMenuItem(
                                value: 'delete',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.delete_outline,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Delete from the list'),
                                  ],
                                ),
                              ),
                            ],
                        icon: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Color: ',
                        style: Styles.textStyle12.copyWith(color: Colors.grey),
                      ),
                      Text(
                        product.color,
                        style: Styles.textStyle12.copyWith(color: Colors.black),
                      ),
                      12.pw,
                      Text(
                        'Size: ',
                        style: Styles.textStyle12.copyWith(color: Colors.grey),
                      ),
                      Text(
                        product.size,
                        style: Styles.textStyle12.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  QuantityWithPrice(
                    product: product,
                    onQuantityChanged: onQuantityChanged,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
