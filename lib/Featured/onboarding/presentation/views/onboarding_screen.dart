import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      "image": "assets/images/onboard1.png",
      "title": "Discover the Latest Fashion Trends",
      "subtitle":
          "Shop the hottest styles, from casual to chic, all in one place",
    },
    {
      "image": "assets/images/onboard2.png",
      "title": "Seamless Shopping Experience",
      "subtitle":
          "Enjoy fast, secure, and hassle-free shopping with multiple payment options",
    },
    {
      "image": "assets/images/onboard3.png",
      "title": "Unlock Exclusive Offers",
      "subtitle":
          "Get special discounts, early access to new arrivals, and rewards just for you",
    },
  ];

  void nextPage() async {
    if (currentPage < pages.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool("onBoardingSeen", true);
      GoRouter.of(context).push(AppRouter.welcomeView);
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.h),
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 6,
              child: PageView.builder(
                controller: pageController,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    spacing: 20.h,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(pages[index]["image"]!, height: 250.h),
                      Text(
                        pages[index]["title"]!,
                        style: Styles.textStyle32,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        pages[index]["subtitle"]!,
                        style: Styles.textStyle16,
                        textAlign: TextAlign.center,
                      ),
                      PageIndicator(
                        currentIndex: currentPage,
                        totalPages: pages.length,
                      ),
                    ],
                  );
                },
              ),
            ),
            10.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  borderreduis: 2,
                  width: 90.w,
                  text: 'Back',
                  color: Colors.black,
                  onTap: previousPage,
                ),
                CustomButton(
                  borderreduis: 2,
                  width: 90.w,
                  text: currentPage == pages.length - 1 ? 'Finish' : 'Next',
                  color: kprimaryColor,
                  onTap: nextPage,
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
