import 'package:booky_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          const BookDetailsAppBAr(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .23,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: const CustomImage(),
            ),
          ),
        ],
      ),
    );
  }
}
