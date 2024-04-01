import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booky_app/features/home/presentation/views/widgets/feautred_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListView(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Best Seller',
            style: Styles.textSize18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
