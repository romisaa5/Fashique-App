import 'package:e_commerce/Featured/Home/presentation/models/category.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CatogeriesList extends StatelessWidget {
  const CatogeriesList({super.key});
  static List<Category> categories = [
    Category(icon: FontAwesomeIcons.personDress, text: "Women's Clothing"),
    Category(icon: FontAwesomeIcons.person, text: "Men's Clothing"),
    Category(icon: FontAwesomeIcons.child, text: "Kids' Clothing"),
    Category(icon: FontAwesomeIcons.shirt, text: "T-Shirts"),
    Category(icon: FontAwesomeIcons.ruler, text: "Pants"),
    Category(icon: FontAwesomeIcons.shoePrints, text: "Shoes"),
    Category(icon: FontAwesomeIcons.bagShopping, text: "Bags"),
    Category(icon: FontAwesomeIcons.ring, text: "Accessories"),
    Category(icon: FontAwesomeIcons.personRunning, text: "Sportswear"),
    Category(icon: FontAwesomeIcons.snowflake, text: "Winter Wear"),
    Category(icon: Icons.sunny, text: "Summer Wear"),
    Category(icon: FontAwesomeIcons.tags, text: "Offers"),
    Category(icon: FontAwesomeIcons.star, text: "New Arrivals"),
    Category(icon: FontAwesomeIcons.fire, text: "Best Sellers"),
  ];
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
                  backgroundColor: KprimaryColor,
                  foregroundColor: Colors.white,
                  child: Icon(categories[index].icon, size: 30.sp),
                ),
                Text(categories[index].text, style: Styles.textStyle12),
              ],
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
