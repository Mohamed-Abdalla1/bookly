import 'package:flutter/material.dart';

class BookDetailsAppBAr extends StatelessWidget {
  const BookDetailsAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
