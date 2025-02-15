import 'package:auto_route/auto_route.dart';
import 'package:listicle/feature/main/view/main_view.dart';
import 'package:listicle/product/constants/route_constants.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          path: RouteConstants.main,
        ),
      ];
}
