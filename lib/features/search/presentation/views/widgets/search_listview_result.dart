import 'package:flutter/material.dart';

class SearchListViewResult extends StatelessWidget {
  const SearchListViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          // child: BestSellerListViewItem(),
        );
      },
    );
  }
}
