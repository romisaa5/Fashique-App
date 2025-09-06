import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/features/profile/presentation/ui/widgets/custom_listtile_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10.h,
          children: [
            SizedBox(height: 30.h),
            Text('My profile', style: Styles.textStyle32),
            CircleAvatar(
              backgroundColor: kprimaryColor.withValues(alpha: .3),
              radius: 50,
              child: CachedNetworkImage(
                imageUrl:
                    "https://www.pngkey.com/png/full/349-3499617_person-placeholder-person-placeholder.png",
                placeholder:
                    (context, url) => SizedBox(
                      height: 200,
                      child: Center(
                        child: CircularProgressIndicator(color: kprimaryColor),
                      ),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text('Matilda Brown', style: Styles.textStyle18),
            Text(
              'matildabrown@mail.com',
              style: Styles.textStyle14.copyWith(color: Colors.grey),
            ),
            Divider(indent: 25.h, endIndent: 25.h),
            CustomListtileProfile(
              title: 'My orders',
              subTitle: 'Already have 12 orders',
              onPressed: () {
                GoRouter.of(context).push(AppRouter.ordersScreen);
              },
            ),
            CustomListtileProfile(
              title: 'Settings',
              subTitle: 'Edit Name, password',
              onPressed: () {
                GoRouter.of(context).push(AppRouter.settingsScreen);
              },
            ),
            CustomListtileProfile(
              title: 'Log Out',
              subTitle: 'Click here to sign out of your account',
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
