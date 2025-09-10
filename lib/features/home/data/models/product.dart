class Product {
  final int id;
  final String title;
  final double price;
  final String imageUrl;
  final int? discountValue;
  final String category;
  final int? rate;
  final String color;
  int quantity;
  final String size;

  Product(
    this.color,
    this.size, {
    required this.id,
    required this.title,
    this.price = 0,
    required this.imageUrl,
    this.discountValue,
    this.category = 'Other',
    this.rate,
    this.quantity = 1,
  });

  static List<Product> dummyProducts = [
    Product(
      'Red',
      'M',
      id: 1,
      title: 'T-shirt',
      price: 300,
      imageUrl: 'assets/images/photo.png',
      category: 'Clothes',
      discountValue: 20,
      rate: 4,
    ),
    Product(
      'Blue',
      'L',
      id: 2,
      title: 'Jeans',
      price: 500,
      imageUrl: 'assets/images/photo.png',
      category: 'Clothes',
      discountValue: 15,
      rate: 5,
    ),
    Product(
      'Black',
      '42',
      id: 3,
      title: 'Sneakers',
      price: 1200,
      imageUrl: 'assets/images/photo.png',
      category: 'Shoes',
      discountValue: 10,
      rate: 3,
    ),
    Product(
      'Brown',
      'One Size',
      id: 4,
      title: 'Backpack',
      price: 800,
      imageUrl: 'assets/images/photo.png',
      category: 'Bags',
      discountValue: 5,
      rate: 4,
    ),
    Product(
      'Silver',
      'Medium',
      id: 5,
      title: 'Watch',
      price: 1500,
      imageUrl: 'assets/images/photo.png',
      category: 'Accessories',
      discountValue: 25,
      rate: 5,
    ),
  ];
}
