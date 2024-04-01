import 'package:booky_app/features/home/presentation/views/book_details_view.dart';
import 'package:booky_app/features/home/presentation/views/home.dart';
import 'package:booky_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashView();
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
  ]);
}
