
import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '4.8',
          style: Styles.textSize16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: 0.7,
            child: Text(
              '(4888)',
              style: Styles.textSize16,
            ))
      ],
    );
  }
}
