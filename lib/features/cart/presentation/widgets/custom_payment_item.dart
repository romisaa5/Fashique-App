import 'package:e_commerce/constnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPaymentItem extends StatelessWidget {
  const CustomPaymentItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
  });

  final String imageUrl;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: 100.w,
      height: 60.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: isSelected ? Colors.black54 : Colors.transparent,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(
          color: isSelected ? kprimaryColor : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Image.asset(imageUrl),
    );
  }
}
