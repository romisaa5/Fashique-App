import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failures.dart';
import 'package:e_commerce/core/utils/stripe_services.dart';
import 'package:e_commerce/features/cart/data/models/payment_intent_input_model.dart';
import 'package:e_commerce/features/cart/data/repos/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeServices.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(null);
    } on Exception catch (e) {
      return left(ServicesFailure(errorMassege: e.toString()));
    }
  }
}
