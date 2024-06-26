import 'package:booky_app/core/widgets/custom_text_field.dart';
import 'package:booky_app/features/search/presentation/views/widgets/search_listview_result.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 40,
        ),
        child: Column(
          children: [
            CustomTextField(),
            SizedBox(
              height: 40,
            ),
            Expanded(child: SearchListViewResult())
          ],
        ));
  }
}
