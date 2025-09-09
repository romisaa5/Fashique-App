import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/cart/presentation/widgets/custom_cart_card.dart';
import 'package:e_commerce/features/cart/presentation/widgets/payments_methods_bottomsheet.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  double getTotalPrice() {
    double total = 0;
    for (var product in Product.dummyProducts) {
      total += product.price * product.quantity;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            16.ph,
            Text('My Cart', style: Styles.textStyle24),
            8.ph,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Product.dummyProducts.length,
              itemBuilder: (context, index) {
                return CustomCartCard(
                  product: Product.dummyProducts[index],
                  onQuantityChanged: () {
                    setState(() {});
                  },
                );
              },
              separatorBuilder: (context, index) => 8.ph,
            ),
            16.ph,
            const Divider(thickness: 1),
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price:',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "\$${getTotalPrice().toStringAsFixed(2)}",
                  style: Styles.textStyle18.copyWith(
                    color: Color(0xff222222),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            24.ph,
            CustomButton(
              text: 'CHECK OUT',
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: kBackgroundColor,
                  context: context,
                  builder: (context) {
                    return PaymentsMethodsBottomsheet();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
