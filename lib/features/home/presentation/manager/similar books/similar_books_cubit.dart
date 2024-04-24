import 'package:bloc/bloc.dart';
import 'package:booky_app/features/home/data/repos/home_repo.dart';
import 'package:booky_app/features/home/presentation/manager/similar%20books/similar_books_state.dart';


class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks()async{
   
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) => emit(SimilarBooksFailure(errMessage: failure.errMessage)),
        (books) => emit(SimilarBooksSuccess(books: books)));
  
  }
}
