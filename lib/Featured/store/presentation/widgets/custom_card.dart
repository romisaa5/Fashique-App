import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_container_widget.dart';
import 'package:e_commerce/core/widgets/custom_favorite_icon.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/stars_rate.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://th.bing.com/th/id/OIP.oNKcAg2wXZA7VKTdLhbuswHaFj?w=317&h=190&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                  placeholder:
                      (context, url) => SizedBox(
                        height: 200,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: kprimaryColor,
                          ),
                        ),
                      ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              CustomcontainerWidget(value: '20%', color: kprimaryColor),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 2.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('T-shirt', style: Styles.textStyle16),
                    StarsRate(),
                    Text(
                      '120 \$',
                      style: Styles.textStyle14.copyWith(color: kprimaryColor),
                    ),
                    Text(
                      '150\$',
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  spacing: 15.h,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CustomFavoriteIcon(),
                    ),
                    CustomButton(
                      text: 'Buy Now',
                      color: kprimaryColor,
                      width: 110.w,
                      borderreduis: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
