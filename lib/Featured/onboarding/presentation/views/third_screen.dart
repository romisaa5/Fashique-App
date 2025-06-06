import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/widgets/custom_pageIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          spacing: 20.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/images/onboard3.png'),
            PageIndicator(currentIndex: 2, totalPages: 3),
            Text(
              'Unlock Exclusive Offers',
              style: Styles.textStyle32,
              textAlign: TextAlign.center,
            ),
            Text(
              'Get special discounts, early access to new arrivals, and rewards just for you',
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  borderreduis: 2,
                  width: 90.w,
                  text: 'Back',
                  color: Color(0xff000000),
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.secondScreen);
                  },
                ),
                CustomButton(
                  borderreduis: 2,
                  width: 151.w,
                  text: 'GETSTATED',
                  color: kprimaryColor,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.welcomeView);
                  },
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
