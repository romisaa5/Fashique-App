import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
            Image.asset('assets/images/onboard1.png'),
            PageIndicator(currentIndex: 0, totalPages: 3),
            Text(
              'Discover the Latest Fashion Trends',
              style: Styles.textStyle32,
              textAlign: TextAlign.center,
            ),
            Text(
              'Shop the hottest styles, from casual to chic, all in one place',
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  borderreduis: 2,
                  width: 90.w,
                  text: 'Next',
                  color: kprimaryColor,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.secondScreen);
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
