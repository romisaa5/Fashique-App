import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/features/cart/presentation/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonePaymentView extends StatelessWidget {
  const DonePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 50.h,
          bottom: 20.h,
          left: 20.w,
          right: 20.w,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ThankYouCard(),
            Positioned(
              top: -50.h,
              left: 125.w,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffD9D9D9),
              ),
            ),
            Positioned(
              top: -40.h,
              left: 135.w,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: kprimaryColor,
                child: Icon(Icons.done, color: Colors.white, size: 50.sp),
              ),
            ),
            Positioned(
              top: 550.h,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  25,
                  (index) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Container(
                        height: 2.h,
                        width: 3.sw,
                        color: const Color(0xFFB8B8B8),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 530.h,
              left: -10,
              child: CircleAvatar(backgroundColor: kBackgroundColor),
            ),
            Positioned(
              top: 530.h,
              right: -10,
              child: CircleAvatar(backgroundColor: kBackgroundColor),
            ),
          ],
        ),
      ),
    );
  }
}
