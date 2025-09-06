import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final IconData icon;
  final String text;

  Category({required this.icon, required this.text});
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
}
