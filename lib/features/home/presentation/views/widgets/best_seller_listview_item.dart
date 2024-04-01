import 'package:booky_app/core/utils/assets.dart';
import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.lightGreenAccent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.test),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'The Jungle Book',
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
                  'mark ssoemjas',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      Styles.textSize16.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r'99 $',
                    style: Styles.textSize22,
                  ),
                  BookRating(),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
