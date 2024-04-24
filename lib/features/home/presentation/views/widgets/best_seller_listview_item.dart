import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails, extra: bookModel);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Colors.lightGreenAccent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textSize20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      bookModel.volumeInfo.authors?[0] ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textSize16
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Free',
                        style: Styles.textSize22,
                      ),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.start,
                        rating:
                            bookModel.volumeInfo.averageRating?.round() ?? 0,
                        count: bookModel.volumeInfo.ratingsCount?.toInt() ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
