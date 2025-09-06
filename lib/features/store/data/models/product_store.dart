class ProductStore {
  final num price;
  final num offer;
  final String category;
  final double rate;
  final bool isNew;
  final String desc;
  final int amount;

  ProductStore({
    required this.amount,
    required this.isNew,
    required this.desc,
    required this.price,
    required this.offer,
    required this.category,
    required this.rate,
  });
}
