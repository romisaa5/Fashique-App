import 'package:e_commerce/features/cart/presentation/widgets/custom_payment_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentsIcons = const [
    'assets/images/visa.png',
    'assets/images/PayPal.png',
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentsIcons.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: CustomPaymentItem(
                isSelected: activeIndex == index,
                imageUrl: paymentsIcons[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
