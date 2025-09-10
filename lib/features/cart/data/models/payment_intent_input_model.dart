class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});
  toJson() {
    int amountInCents = (double.parse(amount) * 100).toInt();
    return {'amount': amountInCents.toString(), 'currency': currency};
  }
}
