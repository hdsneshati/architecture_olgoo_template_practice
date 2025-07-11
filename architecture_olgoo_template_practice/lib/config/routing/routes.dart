final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter routs =
              GoRouter(navigatorKey: navigatorKey, initialLocation: "/splash", routes: [
                 GoRoute(
    path: '/splash',
    name: "/splash",
    builder: (context, state) => const SplashScreen(),
  ),]);