class Review {
  final String username;
  final String comment;
  final DateTime date;

  Review({required this.username, required this.comment, required this.date});
  static List<Review> reviews = [
    Review(
      username: 'Sara',
      comment: 'Great product! Loved the material.',
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
    Review(
      username: 'Ali',
      comment: 'Good quality but size runs small.',
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
  ];
}
