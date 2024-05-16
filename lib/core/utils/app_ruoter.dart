import 'package:go_router/go_router.dart';
import 'package:testptc/feature/cart/presintions/views/cart_view.dart';
import 'package:testptc/feature/home/presintions/views/home_view.dart';
import 'package:testptc/feature/home/presintions/views/widgets/buttom_nav_bar.dart';
import 'package:testptc/feature/splash/onbording.dart';

abstract class AppRouter {
  static const kSplash = "/";
  static const kHomeView = "/HomeView";
  static const kButtomNav = "/NavigationMuneBottom";
  static const kCart = "/CartView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (ctx, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kButtomNav,
        builder: (context, state) => const NavigationMuneBottom(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kCart,
        builder: (context, state) => const CartView(),
      ),
    ],
  );
}
