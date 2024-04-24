import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      required this.mainAxisAlignment,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '$rating',
          style: Styles.textSize16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: 0.7,
            child: Text(
              '$count',
              style: Styles.textSize16,
            ))
      ],
    );
  }
}
