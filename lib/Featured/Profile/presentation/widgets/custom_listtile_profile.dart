import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListtileProfile extends StatelessWidget {
  const CustomListtileProfile({
    super.key,
    required this.title,
    required this.subTitle,
    this.onPressed,
    this.icon,
  });
  final String title;
  final String subTitle;
  final void Function()? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subTitle,
        style: Styles.textStyle12.copyWith(color: Colors.grey),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(icon ?? Icons.arrow_forward_ios, size: 18.sp),
      ),
    );
  }
}
