import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/features/cart/presentation/widgets/payment_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffededed),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            60.ph,
            Text('Thank You !', style: Styles.textStyle24),
            10.ph,
            Text('Your transaction was successful', style: Styles.textStyle18),
            24.ph,
            PaymentInfoItem(title: 'Date', info: '01/24/2023'),
            16.ph,
            PaymentInfoItem(title: 'Time', info: '10:15 AM'),
            16.ph,
            PaymentInfoItem(title: 'To', info: 'Sam Louis'),
            10.ph,
            Divider(color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
