import 'package:e_commerce/Featured/Home/presentation/models/review.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/constnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Review.reviews.map(
        (review) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // صورة اليوزر
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: kprimaryColor.withOpacity(0.2),
                    child: Text(
                      review.username[0].toUpperCase(),
                      style: Styles.textStyle18.copyWith(
                        color: kprimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w), // بدل spacing
                  // محتوى الريفيو
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // اسم وتاريخ وتقييم
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              review.username,
                              style: Styles.textStyle14.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 16, color: Colors.amber),
                                SizedBox(width: 4.w),
                                Text(
                                  "${review.date.day}/${review.date.month}/${review.date.year}",
                                  style: Styles.textStyle12.copyWith(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Text(
                          review.comment,
                          style: Styles.textStyle14.copyWith(height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ).toList(),
    );
  }
}
