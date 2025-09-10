import 'package:e_commerce/core/helper/custom_snackbar.dart';
import 'package:e_commerce/core/helper/extentions.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/cart/data/models/payment_intent_input_model.dart';
import 'package:e_commerce/features/cart/presentation/manager/stripe_payment/stripe_payment_cubit.dart';
import 'package:e_commerce/features/cart/presentation/widgets/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PaymentsMethodsBottomsheet extends StatelessWidget {
  const PaymentsMethodsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          10.ph,
          PaymentMethods(),
          30.ph,
          BlocConsumer<StripePaymentCubit, StripePaymentState>(
            listener: (context, state) {
              if (state is StripePaymenSucess) {
                GoRouter.of(context).pushReplacement(AppRouter.donePaymentView);
              }
              if (state is StripePaymenFailure) {
                Navigator.pop(context);
                showErrorSnackBar(
                  context: context,
                  message: state.errorMassege,
                );
              }
            },
            builder: (context, state) {
              return CustomButton(
                onTap: () {
                  PaymentIntentInputModel paymentIntentInputModel =
                      PaymentIntentInputModel(amount: '100', currency: 'USD');
                  BlocProvider.of<StripePaymentCubit>(context).makePayment(
                    paymentIntentInputModel: paymentIntentInputModel,
                  );
                },
                text: 'Continue',
                isLoading: state is StripePaymentLoading ? true : false,
              );
            },
          ),
          10.ph,
        ],
      ),
    );
  }
}
