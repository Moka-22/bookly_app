import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/book_details_screen.dart';
import 'package:bookly/features/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/features/home/home_screen.dart';
import 'package:bookly/features/home/presentation/manager/smila_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/search/prestentation/views/search_screen.dart';
import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                ),
            child: BookDetailsScreen(bookModel: state.extra as BookModel,)),
      ),
    ],
  );
}
