import 'package:booky_app/core/widgets/custom_error_message.dart';
import 'package:booky_app/core/widgets/custom_loading.dart';
import 'package:booky_app/features/home/presentation/manager/featured%20books/featured_books_cubit.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CustomImage(
                    book: state.books[index].volumeInfo.imageLinks?.thumbnail ??
                        ''),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrMessage(errMessage: state.errMessage);
      } else {
        return const CustomLoadingWidget();
      }
    });
  }
}
