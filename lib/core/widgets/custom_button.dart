import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.width,
    this.borderreduis,
    this.onTap,
    this.imagePath,
    this.height,
  });

  final String text;
  final Color? color;
  final double? width;
  final double? height;
  final double? borderreduis;
  final void Function()? onTap;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderreduis ?? 25.r),
          color: color ?? kprimaryColor,
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (imagePath != null) ...[
                Image.asset(imagePath!, height: 20.h, width: 20.h),
                SizedBox(width: 8.w),
              ],
              Text(
                text,
                style: Styles.textStyle16.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
