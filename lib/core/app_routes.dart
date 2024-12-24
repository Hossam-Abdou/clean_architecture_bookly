import 'package:bookly_app_clean/features/home/presentation/view/home_details_view.dart';
import 'package:bookly_app_clean/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../features/splash/presentation/view/splash_screen.dart';

abstract class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String details = '/homeDetails';


  static final router = GoRouter(routes:

  [
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: home,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: details,
      builder: (context, state) => const HomeDetailsView(),
    ),
  ],);
}