import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:booky_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:booky_app/features/home/presentation/views/widgets/similiar_list%20view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const BookDetailsAppBAr(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .27,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                      // child: const CustomImage(bookModel: ,),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  const Text(
                    'The Jungle Book',
                    style: Styles.textSize30,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'mark ssoemjas',
                      style: Styles.textSize18
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // const BookRating(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  const BookAction(),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textSize18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SimilarListview(),
                  const Expanded(
                      child: SizedBox(
                    height: 50,
                  ))
                ],
              ),
            )
          ],
        ));
  }
}
