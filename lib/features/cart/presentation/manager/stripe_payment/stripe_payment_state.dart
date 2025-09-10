part of 'stripe_payment_cubit.dart';

@immutable
sealed class StripePaymentState {}

final class StripePaymentInitial extends StripePaymentState {}

final class StripePaymentLoading extends StripePaymentState {}

final class StripePaymenSucess extends StripePaymentState {}

final class StripePaymenFailure extends StripePaymentState {
  final String errorMassege;
  StripePaymenFailure({required this.errorMassege});
}
