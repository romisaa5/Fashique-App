import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/cart/presentation/widgets/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentsMethodsBottomsheet extends StatelessWidget {
  const PaymentsMethodsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          10.ph,
          PaymentMethods(),
          30.ph,
          CustomButton(text: 'Continue'),
          10.ph,
        ],
      ),
    );
  }
}
