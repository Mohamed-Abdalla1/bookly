import 'package:booky_app/core/errors/failures.dart';
import 'package:booky_app/core/utils/api_services.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(
    this.apiService,
  );
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
   try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(
          BookModel.fromJson(element),
        );
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure(''));
    }

  }
}
