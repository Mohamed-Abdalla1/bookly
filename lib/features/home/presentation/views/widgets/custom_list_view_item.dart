import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/widgets/custom_loading.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.book});
  final String book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetails),
      child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: book,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => const CustomLoadingWidget(),
            ),
          )),
    );
  }
}
