import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/widgets/custom_app_bar.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/cart/presentation/widgets/custom_credit_card.dart';
import 'package:e_commerce/features/cart/presentation/widgets/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Payment Details'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: 35.ph),
            SliverToBoxAdapter(child: PaymentMethods()),
            SliverToBoxAdapter(child: 16.ph),
            SliverToBoxAdapter(
              child: CustomCreditCard(
                formKey: formKey,
                autovalidateMode: autovalidateMode,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                child: CustomButton(
                  text: 'Pay',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      setState(() {});
                    } else {
                      GoRouter.of(context).push(AppRouter.donePaymentView);
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
