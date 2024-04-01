import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetails),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
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
    );
  }
}
