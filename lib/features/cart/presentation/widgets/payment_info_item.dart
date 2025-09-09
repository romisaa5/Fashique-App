import 'package:e_commerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PaymentInfoItem extends StatelessWidget {
  const PaymentInfoItem({super.key, required this.title, required this.info});
  final String title;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(info, style: Styles.textStyle16),
      ],
    );
  }
}
