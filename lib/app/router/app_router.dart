import 'package:auto_route/auto_route.dart';
import 'package:fun88_clone/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    // Onboarding Routes
    AutoRoute(page: HomeRoute.page, path: '/', initial: true),
    AutoRoute(page: LoginRoute.page, path: '/login'),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
