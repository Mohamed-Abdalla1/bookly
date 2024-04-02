import 'package:booky_app/features/home/presentation/views/book_details_view.dart';
import 'package:booky_app/features/home/presentation/views/home.dart';
import 'package:booky_app/features/search/presentation/views/search_view.dart';
import 'package:booky_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SearchView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) {
        return const BookDetailsView();
      },
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) {
        return const SearchView();
      },
    ),
  ]);
}
