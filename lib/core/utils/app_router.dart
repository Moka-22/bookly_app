import 'package:bookly/features/home/book_details_screen.dart';
import 'package:bookly/features/home/home_screen.dart';
import 'package:bookly/features/search/prestentation/views/search_screen.dart';
import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/homeScreen';
  static const kSearchScreen = '/searchScreen';
  static const kBookDetailsScreen = '/bookDetailsScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}
