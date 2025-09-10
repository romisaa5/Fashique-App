import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/cart/data/models/payment_intent_input_model.dart';
import 'package:e_commerce/features/cart/data/repos/checkout_repo.dart';
import 'package:flutter/material.dart';
part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkoutRepo) : super(StripePaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    emit(StripePaymentLoading());
    var data = await checkoutRepo.makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );

    data.fold(
      (l) => emit(StripePaymenFailure(errorMassege: l.errorMassege)),
      (r) => emit(StripePaymenSucess()),
    );
  }

  @override
  void onChange(Change<StripePaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
