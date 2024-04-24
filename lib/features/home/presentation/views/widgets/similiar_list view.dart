import 'package:flutter/material.dart';

class SimilarListview extends StatelessWidget {
  const SimilarListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16.0),
            // child: CustomImage(),
          );
        },
      ),
    );
  }
}
