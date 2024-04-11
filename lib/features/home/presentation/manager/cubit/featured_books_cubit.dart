import 'package:bloc/bloc.dart';
import 'package:booky_app/core/errors/failures.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
