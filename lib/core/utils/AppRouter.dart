import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bookDetails.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const home = '/home';
  static const bookDetails = '/bookDetails';
  static const Splash = "/";

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Splash,
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const Homepage(),
      ),
      GoRoute(
        path: bookDetails,
        builder: (context, state) => const BookDetailsBody(),
      ),
    ],
  );
}
